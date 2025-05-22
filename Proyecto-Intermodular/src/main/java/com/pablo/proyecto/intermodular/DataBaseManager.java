package com.pablo.proyecto.intermodular;
// En esta clase se gestiona la conexion con la base de datos 

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;


public class DataBaseManager {
    private Connection conn;
    // Creamos un ArrayList donde guardar las categorias
    static protected ArrayList<Categoria> categorias = new ArrayList<>();
    static protected ArrayList<Plataforma> plataformas = new ArrayList<>();
    static protected ArrayList<Plan> planes = new ArrayList<>();
    
    public DataBaseManager() throws SQLException{
        String url = "jdbc:mysql://database-1.cruj3uo4wmv4.us-east-1.rds.amazonaws.com/practica_intermodular";
        String user = "admin";
        String password =  "Medac12345"; //"Med@c";
        conn = DriverManager.getConnection(url, user, password);
        System.out.println("Conexion realizada con exito");
        cargarDatos();
        
    }
    
    // Método para obtener las categorías de la base de datos
    public void obtenerCategorias() throws SQLException{
        String query = "SELECT id_categoria, nombre, descripcion, num_plataformas FROM categorias";
        try (PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery() ) {

            while (rs.next() ) {
                int id = rs.getInt("id_categoria");
                String nombre = rs.getString("nombre");
                String descripcion = rs.getString("descripcion");
                int numPlataformas = rs.getInt("num_plataformas");

                System.out.println("ID: " + id + ", Nombre: " + nombre +
                                   ", Descripcion: " + descripcion +
                                   ", Num Plataformas: " + numPlataformas);
            }

        } 
        
        
    }
    
    
    //Metodo para consultar la base de datos
    private void cargarDatos() throws SQLException {
        // Guardamos las categorias
        String consultaCategorias = "SELECT * FROM categorias";
        try (PreparedStatement stmt = conn.prepareStatement(consultaCategorias);
               ResultSet rs = stmt.executeQuery() ) {

            while (rs.next() ) {
                // Creamos una nueva categoria consultando a la BD
                Categoria cat = new Categoria(
                    rs.getInt("id_categoria"),
                    rs.getString("nombre"),
                    rs.getString("descripcion")
                );
                // Añadimos la categoria al ArrayList
                categorias.add(cat);
            }
        }

        // Guardamos las Plataformas
        String consultaPlataformas = "SELECT * FROM plataformas";
        try (PreparedStatement stmt = conn.prepareStatement(consultaPlataformas);
               ResultSet rs = stmt.executeQuery() ) {

            while (rs.next() ) {
                // Creamos una nueva categoria consultando a la BD
                Plataforma ptf = new Plataforma(
                    rs.getInt("id_plataforma"),
                    rs.getInt("id_categoria"),
                    rs.getString("nombre"),
                    rs.getString("fecha_creacion"),  // Posible Fallo HORA a STRING
                    rs.getString("descripcion"),
                    rs.getString("fundadores"),
                    rs.getString("sitio_web")
                );
                // Añadimos la categoria al ArrayList
                plataformas.add(ptf);
        }

        
    }
        
        // Guardamos los Planes
        String consultaPlanes = "SELECT * FROM planes";
        try (PreparedStatement stmt = conn.prepareStatement(consultaPlanes);
               ResultSet rs = stmt.executeQuery() ) {

            while (rs.next() ) {
                Plan pl = new Plan(
                    rs.getInt("id_plataforma"),
                    rs.getString("nombre_plan"),
                    rs.getDouble("precio"),
                    rs.getInt("dispositivos_maximos")
                );
                planes.add(pl);
            }
        }

    
    }
    
    
    
    
    

}
