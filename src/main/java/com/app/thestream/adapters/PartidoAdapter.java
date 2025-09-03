package com.app.thestream.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.app.thestream.models.Partido;
import com.mexicotv.futbolenvivoabierta.R;
import java.util.List;

public class PartidoAdapter extends RecyclerView.Adapter<PartidoAdapter.PartidoViewHolder> {
    
    private Context context;
    private List<Partido> partidos;

    public PartidoAdapter(Context context, List<Partido> partidos) {
        this.context = context;
        this.partidos = partidos;
    }

    @NonNull
    @Override
    public PartidoViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.item_partido_ligamx, parent, false);
        return new PartidoViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull PartidoViewHolder holder, int position) {
        Partido partido = partidos.get(position);
        
        holder.tvEquipoLocal.setText(partido.getLocal());
        holder.tvEquipoVisitante.setText(partido.getVisitante());
        holder.tvDia.setText(partido.getDia());
        holder.tvHora.setText(partido.getHora());
        holder.tvEstadio.setText(partido.getEstadio());
    }

    @Override
    public int getItemCount() {
        return partidos != null ? partidos.size() : 0;
    }

    public void updatePartidos(List<Partido> nuevosPartidos) {
        this.partidos = nuevosPartidos;
        notifyDataSetChanged();
    }

    static class PartidoViewHolder extends RecyclerView.ViewHolder {
        TextView tvEquipoLocal, tvEquipoVisitante, tvDia, tvHora, tvEstadio;

        public PartidoViewHolder(@NonNull View itemView) {
            super(itemView);
            tvEquipoLocal = itemView.findViewById(R.id.tv_equipo_local);
            tvEquipoVisitante = itemView.findViewById(R.id.tv_equipo_visitante);
            tvDia = itemView.findViewById(R.id.tv_dia);
            tvHora = itemView.findViewById(R.id.tv_hora);
            tvEstadio = itemView.findViewById(R.id.tv_estadio);
        }
    }
}