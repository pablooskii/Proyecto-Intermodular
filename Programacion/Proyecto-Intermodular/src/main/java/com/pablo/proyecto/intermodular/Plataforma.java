package com.pablo.proyecto.intermodular;
// En esta clase se crea un objeto el cual recogera los datos de una categoria

import java.util.Date;

public class Plataforma {
    
    // Atributos
    private int id_plataforma;
    private int id_categoria;
    private String nombre;
    private String fecha_creacion;
    private String descripcion;
    private String fundadores;
    private String sitio_web;
    
    // Constructor
    public Plataforma(int idP, int idC, String n, String fc, String d, String f, String sw){
        this.id_plataforma = idP;
        this.id_categoria = idC;
        this.nombre = n;
        this.fecha_creacion = fc;
        this.descripcion = d;
        this.fundadores = f;
        this.sitio_web = sw;
        
    }
    
    // Getters
    public int getId_plataforma() {
        return this.id_plataforma;
    }

    public int getId_categoria() {
        return this.id_categoria;
    }

    public String getNombre() {
        return this.nombre;
    }

    public String getFecha_creacion() {
        return this.fecha_creacion;
    }

    public String getDescripcion() {
        return this.descripcion;
    }

    public String getFundadores() {
        return this.fundadores;
    }

    public String getSitio_web() {
        return this.sitio_web;
    }
    
    // Setters
    public void setId_plataforma(int id_plataforma) {
        this.id_plataforma = id_plataforma;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setFundadores(String fundadores) {
        this.fundadores = fundadores;
    }

    public void setSitio_web(String sitio_web) {
        this.sitio_web = sitio_web;
    }
    
    // toString
    @Override
    public String toString() {
        return "Plataforma \n" + "id_plataforma -> " + id_plataforma + ", id_categoria -> " + id_categoria + ", nombre -> " + nombre + ", fecha_creacion -> " + fecha_creacion + ", descripcion -> " + descripcion + ", fundadores -> " + fundadores + ", sitio_web -> " + sitio_web;
    }
    
    

}
