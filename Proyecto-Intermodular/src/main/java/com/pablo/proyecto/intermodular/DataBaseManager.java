package com.pablo.proyecto.intermodular;
// En esta clase se gestiona la conexion con la base de datos 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DataBaseManager {
    // Datos necesarios para la conexion
        String url = "jdbc:mysql://localhost:3306/";
        String user = "root";
        String password = "Med@c";
        Connection conn;
    
    public DataBaseManager() throws SQLException{
        
        // Manejamos un posible catch de SQL
        conn = DriverManager.getConnection(url, user, password);
        System.out.println("Conexion realizada con exito");
        
    }
    
    
    
    
    

}
