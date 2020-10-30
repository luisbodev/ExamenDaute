package com.model;

/**
 * Nombre de la clase: Proyecto
 * Fecha: 30-10-2020
 * Version: 1.0
 * Copyright: luis345, ismael-08.jpg
 * @author luisbonilla, ismael casttilo
 */
public class Proyecto {
    private int codigoProyecto;
    private String nombre;
    private String ubicacion;

    public Proyecto() {
    }

    public Proyecto(int codigoProyecto, String nombre, String ubicacion) {
        this.codigoProyecto = codigoProyecto;
        this.nombre = nombre;
        this.ubicacion = ubicacion;
    }

    public int getCodigoProyecto() {
        return codigoProyecto;
    }

    public void setCodigoProyecto(int codigoProyecto) {
        this.codigoProyecto = codigoProyecto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }
    
    
    
}
