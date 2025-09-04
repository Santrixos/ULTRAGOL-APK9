package com.app.thestream.models;

import java.util.ArrayList;
import java.util.List;

public class Partido {
    private String local;
    private String visitante;
    private String dia;
    private String hora;
    private String estadio;
    private List<StreamingLink> streamingLinks;

    public Partido() {
        this.streamingLinks = new ArrayList<>();
    }

    public Partido(String local, String visitante, String dia, String hora, String estadio) {
        this.local = local;
        this.visitante = visitante;
        this.dia = dia;
        this.hora = hora;
        this.estadio = estadio;
        this.streamingLinks = new ArrayList<>();
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getVisitante() {
        return visitante;
    }

    public void setVisitante(String visitante) {
        this.visitante = visitante;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getEstadio() {
        return estadio;
    }

    public void setEstadio(String estadio) {
        this.estadio = estadio;
    }

    public List<StreamingLink> getStreamingLinks() {
        return streamingLinks;
    }

    public void setStreamingLinks(List<StreamingLink> streamingLinks) {
        this.streamingLinks = streamingLinks != null ? streamingLinks : new ArrayList<>();
    }

    public void addStreamingLink(StreamingLink streamingLink) {
        if (this.streamingLinks == null) {
            this.streamingLinks = new ArrayList<>();
        }
        this.streamingLinks.add(streamingLink);
    }

    public boolean hasStreamingLinks() {
        return streamingLinks != null && !streamingLinks.isEmpty();
    }
}