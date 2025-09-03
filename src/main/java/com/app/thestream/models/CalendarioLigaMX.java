package com.app.thestream.models;

import java.util.List;

public class CalendarioLigaMX {
    private List<Jornada> jornadas;

    public CalendarioLigaMX() {}

    public CalendarioLigaMX(List<Jornada> jornadas) {
        this.jornadas = jornadas;
    }

    public List<Jornada> getJornadas() {
        return jornadas;
    }

    public void setJornadas(List<Jornada> jornadas) {
        this.jornadas = jornadas;
    }
}