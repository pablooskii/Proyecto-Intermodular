package com.pablo.proyecto.intermodular;

import java.sql.SQLException;

/* Aplicacion Grupo los 3 Mosqueteros  */
public class ProyectoIntermodular {

    public static void main(String[] args) {
        
        try {
            DataBaseManager db = new DataBaseManager();
            //db.obtenerCategorias();
            
        } catch (SQLException e) {
            System.out.println("Error SQL: " + e.getMessage() );
            
        }
        
        
        // Llamamos al metodo para mostrar el menu
        Menu.mostrarMenuPrincipal();

    }
}
