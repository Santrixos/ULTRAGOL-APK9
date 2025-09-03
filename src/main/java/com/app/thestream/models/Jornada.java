package com.app.thestream.models;

import java.util.List;

public class Jornada {
    private int numero;
    private String fechas;
    private String tipo;
    private List<Partido> partidos;

    public Jornada() {}

    public Jornada(int numero, String fechas, String tipo, List<Partido> partidos) {
        this.numero = numero;
        this.fechas = fechas;
        this.tipo = tipo;
        this.partidos = partidos;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getFechas() {
        return fechas;
    }

    public void setFechas(String fechas) {
        this.fechas = fechas;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public List<Partido> getPartidos() {
        return partidos;
    }

    public void setPartidos(List<Partido> partidos) {
        this.partidos = partidos;
    }
}