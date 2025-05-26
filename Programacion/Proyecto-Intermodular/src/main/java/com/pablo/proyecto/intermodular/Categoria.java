package com.pablo.proyecto.intermodular;
// En esta clase se crea un objeto el cual recogera los datos de una categoria

public class Categoria {
    
    // Atributos
    private int id_categoria;
    private String nombre;
    private String descripcion;
    
    // Constructor
    public Categoria(int id, String n, String d){
        this.id_categoria = id;
        this.nombre = n;
        this.descripcion = d;
        
    }
    
    // Getters
    public int getId_categoria() {
        return this.id_categoria;
    }

    public String getNombre() {
        return this.nombre;
    }

    public String getDescripcion() {
        return this.descripcion;
    }
    
    // Setters
    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    // toString
    @Override
    public String toString() {
        return "Categoria \n" + "id_categoria -> " + id_categoria + ", nombre -> " + nombre + ", descripcion -> " + descripcion;
    }
    
    // Metodos
    
    
}
