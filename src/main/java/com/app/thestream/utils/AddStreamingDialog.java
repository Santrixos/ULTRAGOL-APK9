package com.app.thestream.utils;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.app.thestream.models.Partido;
import com.app.thestream.models.StreamingLink;
import com.mexicotv.futbolenvivoabierta.R;
import java.util.Arrays;
import java.util.List;

public class AddStreamingDialog {
    
    public interface OnStreamingAddedListener {
        void onStreamingAdded(StreamingLink streamingLink, int partidoPosition);
    }
    
    private Context context;
    private Partido partido;
    private int partidoPosition;
    private OnStreamingAddedListener listener;
    private AlertDialog dialog;

    public AddStreamingDialog(Context context, Partido partido, int partidoPosition, OnStreamingAddedListener listener) {
        this.context = context;
        this.partido = partido;
        this.partidoPosition = partidoPosition;
        this.listener = listener;
    }

    public void show() {
        View dialogView = LayoutInflater.from(context).inflate(R.layout.dialog_add_streaming, null);
        
        // Referencias a las vistas
        TextView tvPartidoInfo = dialogView.findViewById(R.id.tv_dialog_partido_info);
        TextView tvPartidoDetalles = dialogView.findViewById(R.id.tv_dialog_partido_detalles);
        EditText etStreamUrl = dialogView.findViewById(R.id.et_stream_url);
        Spinner spinnerPlatform = dialogView.findViewById(R.id.spinner_platform);
        EditText etStreamerName = dialogView.findViewById(R.id.et_streamer_name);
        Button btnCancel = dialogView.findViewById(R.id.btn_cancel);
        Button btnAdd = dialogView.findViewById(R.id.btn_add);

        // Configurar información del partido
        String partidoInfo = partido.getLocal() + " vs " + partido.getVisitante();
        String partidoDetalles = partido.getDia() + " " + partido.getHora() + " - " + partido.getEstadio();
        tvPartidoInfo.setText(partidoInfo);
        tvPartidoDetalles.setText(partidoDetalles);

        // Configurar spinner de plataformas
        setupPlatformSpinner(spinnerPlatform);

        // Crear el diálogo
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setView(dialogView);
        dialog = builder.create();

        // Configurar listeners
        btnCancel.setOnClickListener(v -> dialog.dismiss());
        
        btnAdd.setOnClickListener(v -> {
            String url = etStreamUrl.getText().toString().trim();
            String platform = getPlatformValue(spinnerPlatform.getSelectedItemPosition());
            String streamerName = etStreamerName.getText().toString().trim();

            if (validateInput(url, streamerName)) {
                String matchId = generateMatchId(partido, partidoPosition);
                StreamingLink streamingLink = new StreamingLink(matchId, url, platform, streamerName);
                
                // Agregar a Firebase
                FirebaseService.getInstance().addStreamingLink(streamingLink, new FirebaseService.FirebaseCallback<String>() {
                    @Override
                    public void onSuccess(String result) {
                        streamingLink.setId(result);
                        if (listener != null) {
                            listener.onStreamingAdded(streamingLink, partidoPosition);
                        }
                        dialog.dismiss();
                        Toast.makeText(context, "✅ Transmisión agregada exitosamente", Toast.LENGTH_SHORT).show();
                    }

                    @Override
                    public void onError(String error) {
                        Toast.makeText(context, "❌ " + error, Toast.LENGTH_LONG).show();
                    }
                });
            }
        });

        dialog.show();
    }

    private void setupPlatformSpinner(Spinner spinner) {
        List<String> platforms = Arrays.asList(
            "YouTube", 
            "Facebook", 
            "Instagram", 
            "Twitch", 
            "TikTok", 
            "Otra plataforma"
        );
        
        ArrayAdapter<String> adapter = new ArrayAdapter<>(context, android.R.layout.simple_spinner_item, platforms);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(adapter);
    }

    private String getPlatformValue(int position) {
        switch (position) {
            case 0: return "youtube";
            case 1: return "facebook";
            case 2: return "instagram";
            case 3: return "twitch";
            case 4: return "tiktok";
            default: return "other";
        }
    }

    private boolean validateInput(String url, String streamerName) {
        if (url.isEmpty()) {
            Toast.makeText(context, "⚠️ Por favor ingresa la URL de transmisión", Toast.LENGTH_SHORT).show();
            return false;
        }

        if (!isValidUrl(url)) {
            Toast.makeText(context, "⚠️ Por favor ingresa una URL válida", Toast.LENGTH_SHORT).show();
            return false;
        }

        if (streamerName.isEmpty()) {
            Toast.makeText(context, "⚠️ Por favor ingresa el nombre del canal", Toast.LENGTH_SHORT).show();
            return false;
        }

        return true;
    }

    private boolean isValidUrl(String url) {
        return url.startsWith("http://") || url.startsWith("https://");
    }

    private String generateMatchId(Partido partido, int position) {
        return "match_" + partido.getLocal().replaceAll("\\s+", "_") + 
               "_vs_" + partido.getVisitante().replaceAll("\\s+", "_") + 
               "_" + position;
    }
}