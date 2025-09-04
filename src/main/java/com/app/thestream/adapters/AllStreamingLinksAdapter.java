package com.app.thestream.adapters;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.app.thestream.models.StreamingLink;
import com.mexicotv.futbolenvivoabierta.R;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

public class AllStreamingLinksAdapter extends RecyclerView.Adapter<AllStreamingLinksAdapter.StreamingLinkViewHolder> {
    
    private Context context;
    private List<StreamingLink> streamingLinks;
    private SimpleDateFormat dateFormat;

    public AllStreamingLinksAdapter(Context context, List<StreamingLink> streamingLinks) {
        this.context = context;
        this.streamingLinks = streamingLinks;
        this.dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm", Locale.getDefault());
    }

    @NonNull
    @Override
    public StreamingLinkViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.item_all_streaming_link, parent, false);
        return new StreamingLinkViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull StreamingLinkViewHolder holder, int position) {
        StreamingLink streamingLink = streamingLinks.get(position);
        
        holder.tvStreamerName.setText(streamingLink.getStreamerName());
        holder.tvPlatformName.setText(getPlatformDisplayName(streamingLink.getPlatform()));
        holder.tvMatchInfo.setText(getMatchDisplayName(streamingLink.getMatchId()));
        
        // Mostrar fecha si está disponible
        if (streamingLink.getTimestamp() != null) {
            holder.tvTimestamp.setText("📅 " + dateFormat.format(streamingLink.getTimestamp()));
            holder.tvTimestamp.setVisibility(View.VISIBLE);
        } else {
            holder.tvTimestamp.setVisibility(View.GONE);
        }
        
        // Configurar icono según la plataforma
        setPlatformIcon(holder.ivPlatformIcon, streamingLink.getPlatform());
        
        // Click listener para abrir el link
        holder.btnOpenLink.setOnClickListener(v -> openStreamingLink(streamingLink.getStreamUrl()));
        
        // Click listener en todo el item
        holder.itemView.setOnClickListener(v -> openStreamingLink(streamingLink.getStreamUrl()));
    }

    @Override
    public int getItemCount() {
        return streamingLinks != null ? streamingLinks.size() : 0;
    }

    public void updateStreamingLinks(List<StreamingLink> newStreamingLinks) {
        this.streamingLinks = newStreamingLinks;
        notifyDataSetChanged();
    }

    private String getPlatformDisplayName(String platform) {
        if (platform == null) return "Otra Plataforma";
        
        switch (platform.toLowerCase()) {
            case "youtube": return "YouTube";
            case "facebook": return "Facebook";
            case "instagram": return "Instagram";
            case "twitch": return "Twitch";
            case "tiktok": return "TikTok";
            default: return "Otra Plataforma";
        }
    }
    
    private String getMatchDisplayName(String matchId) {
        if (matchId == null) return "Partido";
        
        // Extraer información del matchId (formato: "match_equipo1_vs_equipo2_position")
        String[] parts = matchId.split("_");
        if (parts.length >= 4) {
            String equipo1 = parts[1].replace("_", " ");
            String equipo2 = parts[3].replace("_", " ");
            return equipo1 + " vs " + equipo2;
        }
        
        return "Partido Liga MX";
    }
    
    private void setPlatformIcon(ImageView imageView, String platform) {
        // Usar diferentes iconos según la plataforma
        if (platform == null) {
            imageView.setImageResource(android.R.drawable.ic_media_play);
            return;
        }
        
        switch (platform.toLowerCase()) {
            case "youtube":
                imageView.setImageResource(android.R.drawable.ic_media_play);
                // En una app real, usarías un icono específico de YouTube
                break;
            case "facebook":
                imageView.setImageResource(android.R.drawable.ic_menu_share);
                break;
            case "instagram":
                imageView.setImageResource(android.R.drawable.ic_menu_camera);
                break;
            case "twitch":
                imageView.setImageResource(android.R.drawable.ic_media_play);
                break;
            case "tiktok":
                imageView.setImageResource(android.R.drawable.ic_media_play);
                break;
            default:
                imageView.setImageResource(android.R.drawable.ic_media_play);
                break;
        }
    }
    
    private void openStreamingLink(String url) {
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            context.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(context, "❌ Error al abrir el enlace", Toast.LENGTH_SHORT).show();
        }
    }

    static class StreamingLinkViewHolder extends RecyclerView.ViewHolder {
        TextView tvStreamerName, tvPlatformName, tvMatchInfo, tvTimestamp;
        ImageView ivPlatformIcon, btnOpenLink;

        public StreamingLinkViewHolder(@NonNull View itemView) {
            super(itemView);
            tvStreamerName = itemView.findViewById(R.id.tv_streamer_name);
            tvPlatformName = itemView.findViewById(R.id.tv_platform_name);
            tvMatchInfo = itemView.findViewById(R.id.tv_match_info);
            tvTimestamp = itemView.findViewById(R.id.tv_timestamp);
            ivPlatformIcon = itemView.findViewById(R.id.iv_platform_icon);
            btnOpenLink = itemView.findViewById(R.id.btn_open_link);
        }
    }
}