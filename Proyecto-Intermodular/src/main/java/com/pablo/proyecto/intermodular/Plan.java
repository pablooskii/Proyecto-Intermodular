package com.pablo.proyecto.intermodular;
// En esta clase se crea un objeto el cual recogera los datos de los planes de cada plataforma

public class Plan {
    
    // Atributos
    private String id_plataforma;
    private String nombre_plan;
    private double precio;
    private int dispositivos_maximos;
    
    // Constructor
    public Plan(String idP, String np, double p, int dm){
        this.id_plataforma = idP;
        this.nombre_plan = np;
        this.precio = p;
        this.dispositivos_maximos = dm;
        
    }
    
    // Getters
    public String getId_plataforma() {
        return this.id_plataforma;
    }

    public String getNombre_plan() {
        return this.nombre_plan;
    }

    public double getPrecio() {
        return this.precio;
    }

    public int getDispositivos_maximos() {
        return this.dispositivos_maximos;
    }
    
    // Setters
    public void setId_plataforma(String id_plataforma) {
        this.id_plataforma = id_plataforma;
    }

    public void setNombre_plan(String nombre_plan) {
        this.nombre_plan = nombre_plan;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public void setDispositivos_maximos(int dispositivos_maximos) {
        this.dispositivos_maximos = dispositivos_maximos;
    }
    
    // toSting
    @Override
    public String toString() {
        return "Plan \n" + "id_plataforma -> " + id_plataforma + ", nombre_plan -> " + nombre_plan + ", precio -> " + precio + ", dispositivos_maximos ->" + dispositivos_maximos;
    }
    
    
    

}
