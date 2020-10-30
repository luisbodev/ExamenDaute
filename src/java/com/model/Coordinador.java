package com.model;

/**
 * Nombre de la clase: Coordinador
 * Fecha: 30-10-2020
 * Version: 1.0
 * Copyright: luis345, ismael-08.jpg
 * @author luisbonilla, ismael casttilo
 */
public class Coordinador {
    private int codigoCoordinador;
    private String nombre;
    private int edad;
    private double sueldoBase;
    private int codigoProyecto;

    public Coordinador() {
    }

    public Coordinador(int codigoCoordinador, String nombre, int edad, double sueldoBase, int codigoProyecto) {
        this.codigoCoordinador = codigoCoordinador;
        this.nombre = nombre;
        this.edad = edad;
        this.sueldoBase = sueldoBase;
        this.codigoProyecto = codigoProyecto;
    }

    public int getCodigoCoordinador() {
        return codigoCoordinador;
    }

    public void setCodigoCoordinador(int codigoCoordinador) {
        this.codigoCoordinador = codigoCoordinador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getSueldoBase() {
        return sueldoBase;
    }

    public void setSueldoBase(double sueldoBase) {
        this.sueldoBase = sueldoBase;
    }

    public int getCodigoProyecto() {
        return codigoProyecto;
    }

    public void setCodigoProyecto(int codigoProyecto) {
        this.codigoProyecto = codigoProyecto;
    }
    
    
}
