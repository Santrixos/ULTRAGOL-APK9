package com.app.thestream.activities;

import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import com.app.thestream.adapters.PartidoAdapter;
import com.app.thestream.models.CalendarioLigaMX;
import com.app.thestream.models.Jornada;
import com.app.thestream.models.Partido;
import com.google.gson.Gson;
import com.mexicotv.futbolenvivoabierta.R;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

public class ActivityCalendarLigaMX extends AppCompatActivity {
    
    private static final String TAG = "CalendarLigaMX";
    private static final String CALENDAR_URL = "https://cf77ea29-4f6d-4003-ba1e-3f66a8aff881-00-2fvaq65u7292z.kirk.replit.dev/calendar";
    
    private Toolbar toolbar;
    private TextView tvJornadaInfo, tvJornadaNumero, tvJornadaFechas, tvJornadaTipo, tvTotalJornadas;
    private Button btnAnterior, btnSiguiente;
    private RecyclerView recyclerPartidos;
    private ProgressBar progressLoading;
    private LinearLayout layoutEmpty, jornadaInfoSection, statsFooter;
    
    private PartidoAdapter partidoAdapter;
    private CalendarioLigaMX calendarioLigaMX;
    private int jornadaActual = 1;
    private RequestQueue requestQueue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar_ligamx);
        
        initViews();
        setupToolbar();
        setupRecyclerView();
        setupClickListeners();
        loadCalendario();
    }
    
    private void initViews() {
        toolbar = findViewById(R.id.toolbar);
        tvJornadaInfo = findViewById(R.id.tv_jornada_info);
        tvJornadaNumero = findViewById(R.id.tv_jornada_numero);
        tvJornadaFechas = findViewById(R.id.tv_jornada_fechas);
        tvJornadaTipo = findViewById(R.id.tv_jornada_tipo);
        tvTotalJornadas = findViewById(R.id.tv_total_jornadas);
        btnAnterior = findViewById(R.id.btn_anterior);
        btnSiguiente = findViewById(R.id.btn_siguiente);
        recyclerPartidos = findViewById(R.id.recycler_partidos);
        progressLoading = findViewById(R.id.progress_loading);
        layoutEmpty = findViewById(R.id.layout_empty);
        jornadaInfoSection = findViewById(R.id.jornada_info_section);
        statsFooter = findViewById(R.id.stats_footer);
        
        requestQueue = Volley.newRequestQueue(this);
    }
    
    private void setupToolbar() {
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.calendario_liga_mx);
        }
    }
    
    private void setupRecyclerView() {
        recyclerPartidos.setLayoutManager(new LinearLayoutManager(this));
        partidoAdapter = new PartidoAdapter(this, new ArrayList<>());
        recyclerPartidos.setAdapter(partidoAdapter);
    }
    
    private void setupClickListeners() {
        btnAnterior.setOnClickListener(v -> {
            if (jornadaActual > 1) {
                jornadaActual--;
                loadJornada(jornadaActual);
            }
        });
        
        btnSiguiente.setOnClickListener(v -> {
            if (calendarioLigaMX != null && jornadaActual < calendarioLigaMX.getJornadas().size()) {
                jornadaActual++;
                loadJornada(jornadaActual);
            }
        });
    }
    
    private void loadCalendario() {
        showLoading(true);
        
        JsonObjectRequest request = new JsonObjectRequest(
            Request.Method.GET, 
            CALENDAR_URL, 
            null,
            new Response.Listener<JSONObject>() {
                @Override
                public void onResponse(JSONObject response) {
                    try {
                        Gson gson = new Gson();
                        calendarioLigaMX = gson.fromJson(response.toString(), CalendarioLigaMX.class);
                        
                        if (calendarioLigaMX != null && calendarioLigaMX.getJornadas() != null) {
                            updateStats();
                            loadJornada(jornadaActual);
                        } else {
                            showError();
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "Error parsing calendar data", e);
                        showError();
                    }
                }
            },
            new Response.ErrorListener() {
                @Override
                public void onErrorResponse(VolleyError error) {
                    Log.e(TAG, "Error loading calendar", error);
                    showError();
                }
            }
        );
        
        requestQueue.add(request);
    }
    
    private void loadJornada(int numeroJornada) {
        if (calendarioLigaMX == null || calendarioLigaMX.getJornadas() == null) {
            return;
        }
        
        List<Jornada> jornadas = calendarioLigaMX.getJornadas();
        if (numeroJornada < 1 || numeroJornada > jornadas.size()) {
            return;
        }
        
        Jornada jornada = jornadas.get(numeroJornada - 1);
        updateJornadaInfo(jornada);
        updatePartidos(jornada.getPartidos());
        updateNavigationButtons();
        
        showLoading(false);
    }
    
    private void updateJornadaInfo(Jornada jornada) {
        tvJornadaInfo.setText(getString(R.string.jornada_info, jornada.getNumero(), 
            calendarioLigaMX.getJornadas().size()));
        tvJornadaNumero.setText(getString(R.string.jornada_numero, jornada.getNumero()));
        tvJornadaFechas.setText(jornada.getFechas());
        
        if (jornada.getTipo() != null && !jornada.getTipo().isEmpty()) {
            tvJornadaTipo.setText(jornada.getTipo());
            tvJornadaTipo.setVisibility(View.VISIBLE);
        } else {
            tvJornadaTipo.setVisibility(View.GONE);
        }
        
        jornadaInfoSection.setVisibility(View.VISIBLE);
    }
    
    private void updatePartidos(List<Partido> partidos) {
        if (partidos != null && !partidos.isEmpty()) {
            partidoAdapter.updatePartidos(partidos);
            recyclerPartidos.setVisibility(View.VISIBLE);
            layoutEmpty.setVisibility(View.GONE);
        } else {
            recyclerPartidos.setVisibility(View.GONE);
            layoutEmpty.setVisibility(View.VISIBLE);
        }
    }
    
    private void updateNavigationButtons() {
        btnAnterior.setEnabled(jornadaActual > 1);
        btnSiguiente.setEnabled(calendarioLigaMX != null && 
            jornadaActual < calendarioLigaMX.getJornadas().size());
    }
    
    private void updateStats() {
        if (calendarioLigaMX != null && calendarioLigaMX.getJornadas() != null) {
            tvTotalJornadas.setText(String.valueOf(calendarioLigaMX.getJornadas().size()));
            statsFooter.setVisibility(View.VISIBLE);
        }
    }
    
    private void showLoading(boolean show) {
        progressLoading.setVisibility(show ? View.VISIBLE : View.GONE);
        recyclerPartidos.setVisibility(show ? View.GONE : View.VISIBLE);
        layoutEmpty.setVisibility(View.GONE);
    }
    
    private void showError() {
        showLoading(false);
        recyclerPartidos.setVisibility(View.GONE);
        layoutEmpty.setVisibility(View.VISIBLE);
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
    protected void onDestroy() {
        super.onDestroy();
        if (requestQueue != null) {
            requestQueue.cancelAll(TAG);
        }
    }
}