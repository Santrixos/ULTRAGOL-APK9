package com.app.thestream.activities;

import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
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
import android.os.AsyncTask;
import com.app.thestream.adapters.PartidoAdapter;
import com.app.thestream.models.CalendarioLigaMX;
import com.app.thestream.models.Jornada;
import com.app.thestream.models.Partido;
import com.app.thestream.utils.CalendarDataLoader;
import com.app.thestream.utils.GeminiLigaMXService;
import com.mexicotv.futbolenvivoabierta.R;
import android.app.AlertDialog;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

public class ActivityCalendarLigaMX extends AppCompatActivity {
    
    private static final String TAG = "CalendarLigaMX";
    
    private Toolbar toolbar;
    private TextView tvJornadaInfo, tvJornadaNumero, tvJornadaFechas, tvJornadaTipo, tvTotalJornadas;
    private Button btnAnterior, btnSiguiente;
    private RecyclerView recyclerPartidos;
    private ProgressBar progressLoading;
    private LinearLayout layoutEmpty, jornadaInfoSection, statsFooter;
    
    private PartidoAdapter partidoAdapter;
    private CalendarioLigaMX calendarioLigaMX;
    private int jornadaActual = 1;
    private GeminiLigaMXService geminiService;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar_ligamx);
        
        initViews();
        setupToolbar();
        setupRecyclerView();
        setupClickListeners();
        initGeminiService();
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
        
        // Log para debug - verificar que todos los elementos fueron encontrados
        Log.d(TAG, "🔍 Verificando elementos del layout:");
        Log.d(TAG, "toolbar: " + (toolbar != null ? "✅" : "❌"));
        Log.d(TAG, "btnAnterior: " + (btnAnterior != null ? "✅" : "❌"));
        Log.d(TAG, "btnSiguiente: " + (btnSiguiente != null ? "✅" : "❌"));
        Log.d(TAG, "recyclerPartidos: " + (recyclerPartidos != null ? "✅" : "❌"));
        
        // Verificar que los botones críticos existen
        if (btnAnterior == null) {
            Log.e(TAG, "❌ CRÍTICO: btn_anterior no encontrado en el layout");
        }
        if (btnSiguiente == null) {
            Log.e(TAG, "❌ CRÍTICO: btn_siguiente no encontrado en el layout");
        }
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
        // Verificar que los botones existen
        if (btnAnterior == null || btnSiguiente == null) {
            Log.e(TAG, "❌ Error crítico: Botones no encontrados en el layout");
            return;
        }
        
        btnAnterior.setOnClickListener(v -> {
            Log.d(TAG, "🔄 Botón Anterior presionado - Jornada actual: " + jornadaActual);
            if (jornadaActual > 1) {
                jornadaActual--;
                Log.d(TAG, "⬅️ Navegando a jornada: " + jornadaActual);
                loadJornada(jornadaActual);
            } else {
                Log.w(TAG, "⚠️ Ya estás en la primera jornada");
            }
        });
        
        btnSiguiente.setOnClickListener(v -> {
            Log.d(TAG, "🔄 Botón Siguiente presionado - Jornada actual: " + jornadaActual);
            if (calendarioLigaMX != null && jornadaActual < calendarioLigaMX.getJornadas().size()) {
                jornadaActual++;
                Log.d(TAG, "➡️ Navegando a jornada: " + jornadaActual);
                loadJornada(jornadaActual);
            } else {
                Log.w(TAG, "⚠️ Ya estás en la última jornada disponible");
            }
        });
        
        Log.d(TAG, "✅ Click listeners configurados correctamente");
    }
    
    private void initGeminiService() {
        geminiService = new GeminiLigaMXService();
        Log.d(TAG, "🤖 Servicio Gemini inicializado");
    }
    
    private void loadCalendario() {
        showLoading(true);
        
        // Cargar datos desde archivo local en background thread
        new AsyncTask<Void, Void, CalendarioLigaMX>() {
            @Override
            protected CalendarioLigaMX doInBackground(Void... voids) {
                return CalendarDataLoader.loadCalendarFromAssets(ActivityCalendarLigaMX.this);
            }
            
            @Override
            protected void onPostExecute(CalendarioLigaMX calendar) {
                calendarioLigaMX = calendar;
                
                if (calendarioLigaMX != null && calendarioLigaMX.getJornadas() != null) {
                    updateStats();
                    loadJornada(jornadaActual);
                } else {
                    showError();
                }
            }
        }.execute();
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
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_calendar_ligamx, menu);
        return true;
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int itemId = item.getItemId();
        
        if (itemId == android.R.id.home) {
            onBackPressed();
            return true;
        } else if (itemId == R.id.menu_gemini_analisis) {
            showGeminiJornadaInfo();
            return true;
        } else if (itemId == R.id.menu_gemini_noticias) {
            showGeminiNoticias();
            return true;
        } else if (itemId == R.id.menu_actualizar) {
            loadCalendario();
            return true;
        }
        
        return super.onOptionsItemSelected(item);
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (geminiService != null) {
            geminiService.shutdown();
        }
    }
    
    // Método para mostrar información de Gemini sobre la jornada actual
    private void showGeminiJornadaInfo() {
        if (calendarioLigaMX == null || geminiService == null) {
            Toast.makeText(this, "⚠️ Información no disponible", Toast.LENGTH_SHORT).show();
            return;
        }
        
        Jornada jornada = calendarioLigaMX.getJornadas().get(jornadaActual - 1);
        StringBuilder equipos = new StringBuilder();
        
        for (Partido partido : jornada.getPartidos()) {
            equipos.append(partido.getLocal()).append(" vs ").append(partido.getVisitante()).append(", ");
        }
        
        // Mostrar loading
        AlertDialog loadingDialog = new AlertDialog.Builder(this)
            .setTitle("🤖 Gemini AI")
            .setMessage("Generando análisis de la jornada...")
            .setCancelable(false)
            .create();
        loadingDialog.show();
        
        geminiService.getJornadaAnalisis(jornadaActual, equipos.toString(), new GeminiLigaMXService.GeminiCallback() {
            @Override
            public void onSuccess(String response) {
                runOnUiThread(() -> {
                    loadingDialog.dismiss();
                    showGeminiResponseDialog("📊 Análisis Jornada " + jornadaActual, response);
                });
            }
            
            @Override
            public void onError(String error) {
                runOnUiThread(() -> {
                    loadingDialog.dismiss();
                    Toast.makeText(ActivityCalendarLigaMX.this, 
                        "❌ Error: " + error, Toast.LENGTH_LONG).show();
                });
            }
        });
    }
    
    // Método para mostrar noticias de Liga MX
    private void showGeminiNoticias() {
        if (geminiService == null) {
            Toast.makeText(this, "⚠️ Servicio no disponible", Toast.LENGTH_SHORT).show();
            return;
        }
        
        // Mostrar loading
        AlertDialog loadingDialog = new AlertDialog.Builder(this)
            .setTitle("🤖 Gemini AI")
            .setMessage("Obteniendo noticias de Liga MX...")
            .setCancelable(false)
            .create();
        loadingDialog.show();
        
        geminiService.getLigaMXNoticias(new GeminiLigaMXService.GeminiCallback() {
            @Override
            public void onSuccess(String response) {
                runOnUiThread(() -> {
                    loadingDialog.dismiss();
                    showGeminiResponseDialog("📰 Noticias Liga MX 2025", response);
                });
            }
            
            @Override
            public void onError(String error) {
                runOnUiThread(() -> {
                    loadingDialog.dismiss();
                    Toast.makeText(ActivityCalendarLigaMX.this, 
                        "❌ Error: " + error, Toast.LENGTH_LONG).show();
                });
            }
        });
    }
    
    private void showGeminiResponseDialog(String title, String content) {
        new AlertDialog.Builder(this)
            .setTitle(title)
            .setMessage(content)
            .setPositiveButton("✅ Cerrar", null)
            .setNeutralButton("📰 Más Noticias", (dialog, which) -> showGeminiNoticias())
            .create()
            .show();
    }
}