package com.app.thestream.models;

public class Partido {
    private String local;
    private String visitante;
    private String dia;
    private String hora;
    private String estadio;

    public Partido() {}

    public Partido(String local, String visitante, String dia, String hora, String estadio) {
        this.local = local;
        this.visitante = visitante;
        this.dia = dia;
        this.hora = hora;
        this.estadio = estadio;
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
}