package com.app.thestream.activities;

import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.app.thestream.adapters.AllStreamingLinksAdapter;
import com.app.thestream.models.StreamingLink;
import com.app.thestream.utils.FirebaseService;
import com.mexicotv.futbolenvivoabierta.R;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ViewStreamingLinksActivity extends AppCompatActivity {
    
    private static final String TAG = "ViewStreamingLinks";
    
    private Toolbar toolbar;
    private RecyclerView recyclerStreamingLinks;
    private ProgressBar progressLoading;
    private TextView tvEmptyMessage;
    private AllStreamingLinksAdapter streamingAdapter;
    private FirebaseService firebaseService;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_view_streaming_links);
        
        initViews();
        setupToolbar();
        setupRecyclerView();
        initFirebaseService();
        loadStreamingLinks();
    }
    
    private void initViews() {
        toolbar = findViewById(R.id.toolbar);
        recyclerStreamingLinks = findViewById(R.id.recycler_streaming_links);
        progressLoading = findViewById(R.id.progress_loading);
        tvEmptyMessage = findViewById(R.id.tv_empty_message);
    }
    
    private void setupToolbar() {
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle("📺 Transmisiones Disponibles");
        }
    }
    
    private void setupRecyclerView() {
        recyclerStreamingLinks.setLayoutManager(new LinearLayoutManager(this));
        streamingAdapter = new AllStreamingLinksAdapter(this, new ArrayList<>());
        recyclerStreamingLinks.setAdapter(streamingAdapter);
    }
    
    private void initFirebaseService() {
        firebaseService = FirebaseService.getInstance();
    }
    
    private void loadStreamingLinks() {
        showLoading(true);
        
        firebaseService.getAllStreamingLinks(new FirebaseService.FirebaseCallback<Map<String, List<StreamingLink>>>() {
            @Override
            public void onSuccess(Map<String, List<StreamingLink>> linksByMatch) {
                showLoading(false);
                
                // Convertir el mapa a una lista plana
                List<StreamingLink> allLinks = new ArrayList<>();
                for (Map.Entry<String, List<StreamingLink>> entry : linksByMatch.entrySet()) {
                    allLinks.addAll(entry.getValue());
                }
                
                if (allLinks.isEmpty()) {
                    showEmptyMessage(true);
                } else {
                    showEmptyMessage(false);
                    streamingAdapter.updateStreamingLinks(allLinks);
                }
                
                Log.d(TAG, "✅ Cargadas " + allLinks.size() + " transmisiones");
            }

            @Override
            public void onError(String error) {
                showLoading(false);
                showEmptyMessage(true);
                Toast.makeText(ViewStreamingLinksActivity.this, 
                    "❌ Error al cargar transmisiones: " + error, 
                    Toast.LENGTH_LONG).show();
                Log.e(TAG, "Error cargando transmisiones: " + error);
            }
        });
    }
    
    private void showLoading(boolean show) {
        progressLoading.setVisibility(show ? View.VISIBLE : View.GONE);
        recyclerStreamingLinks.setVisibility(show ? View.GONE : View.VISIBLE);
    }
    
    private void showEmptyMessage(boolean show) {
        tvEmptyMessage.setVisibility(show ? View.VISIBLE : View.GONE);
        recyclerStreamingLinks.setVisibility(show ? View.GONE : View.VISIBLE);
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        // Recargar las transmisiones al volver a la actividad
        loadStreamingLinks();
    }
}