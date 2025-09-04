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
import java.util.List;

public class StreamingLinkAdapter extends RecyclerView.Adapter<StreamingLinkAdapter.StreamingLinkViewHolder> {
    
    private Context context;
    private List<StreamingLink> streamingLinks;

    public StreamingLinkAdapter(Context context, List<StreamingLink> streamingLinks) {
        this.context = context;
        this.streamingLinks = streamingLinks;
    }

    @NonNull
    @Override
    public StreamingLinkViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.item_streaming_link, parent, false);
        return new StreamingLinkViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull StreamingLinkViewHolder holder, int position) {
        StreamingLink streamingLink = streamingLinks.get(position);
        
        holder.tvStreamerName.setText(streamingLink.getStreamerName());
        holder.tvPlatformName.setText(getPlatformDisplayName(streamingLink.getPlatform()));
        
        // Configurar icono según la plataforma
        setPlatformIcon(holder.ivPlatformIcon, streamingLink.getPlatform());
        
        // Click listener para abrir el link
        holder.ivOpenLink.setOnClickListener(v -> openStreamingLink(streamingLink.getStreamUrl()));
        
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
        if (platform == null) return "Otro";
        
        switch (platform.toLowerCase()) {
            case "youtube": return "YouTube";
            case "facebook": return "Facebook";
            case "instagram": return "Instagram";
            case "twitch": return "Twitch";
            case "tiktok": return "TikTok";
            default: return "Otro";
        }
    }

    private void setPlatformIcon(ImageView imageView, String platform) {
        // Por simplicidad, usamos el mismo icono para todas las plataformas
        // En una implementación real, tendrías iconos específicos para cada plataforma
        imageView.setImageResource(android.R.drawable.ic_media_play);
        
        // Opcional: cambiar el color del tint según la plataforma
        int tintColor;
        switch (platform != null ? platform.toLowerCase() : "other") {
            case "youtube":
                tintColor = android.graphics.Color.RED;
                break;
            case "facebook":
                tintColor = android.graphics.Color.parseColor("#1877F2");
                break;
            case "instagram":
                tintColor = android.graphics.Color.parseColor("#E4405F");
                break;
            case "twitch":
                tintColor = android.graphics.Color.parseColor("#9146FF");
                break;
            case "tiktok":
                tintColor = android.graphics.Color.BLACK;
                break;
            default:
                tintColor = context.getResources().getColor(R.color.colorAccent);
                break;
        }
        imageView.setColorFilter(tintColor);
    }

    private void openStreamingLink(String url) {
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            context.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(context, "No se pudo abrir el enlace", Toast.LENGTH_SHORT).show();
        }
    }

    static class StreamingLinkViewHolder extends RecyclerView.ViewHolder {
        ImageView ivPlatformIcon, ivOpenLink;
        TextView tvStreamerName, tvPlatformName;

        public StreamingLinkViewHolder(@NonNull View itemView) {
            super(itemView);
            ivPlatformIcon = itemView.findViewById(R.id.iv_platform_icon);
            ivOpenLink = itemView.findViewById(R.id.iv_open_link);
            tvStreamerName = itemView.findViewById(R.id.tv_streamer_name);
            tvPlatformName = itemView.findViewById(R.id.tv_platform_name);
        }
    }
}