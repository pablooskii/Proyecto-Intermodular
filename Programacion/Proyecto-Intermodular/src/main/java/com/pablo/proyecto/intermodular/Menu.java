package com.pablo.proyecto.intermodular;
//Proyecto realizado por Pablos González Pérez

import java.util.ArrayList;
import java.util.Scanner;


public class Menu {

    public static void mostrarMenuPrincipal() {
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.println("--- MENU CATEGORIAS ---");
            int i = 1;
            
            // Mostamos las categorias
            for (Categoria cat : DataBaseManager.categorias) {
                System.out.println("[ " + i + " ] " + cat.getNombre() );
                i ++;
            }
            
            System.out.print("Seleccione una categoria -> ");
            int opcion = Integer.parseInt(sc.nextLine() );
            System.out.println("");

            if (opcion == 0){
                break;
            }
            if (opcion >= 1 && opcion <= DataBaseManager.categorias.size() ) {
                // Guardamos la categoria que haya indicado el usuario. Hacemos menos 1 porque el ArrayList empieza desde 0
                Categoria seleccionada = DataBaseManager.categorias.get(opcion - 1);
                // Llamamos al metodo mostrar plataformas pasandole el id de la categoria
                mostrarPlataformas(seleccionada.getId_categoria() );
            }
            break;
        }
        
    }

    private static void mostrarPlataformas(int idCategoria) {
        Scanner sc = new Scanner(System.in);
        // Creamos un ArrayList para guaradar las plataformas elegidas
        ArrayList<Plataforma> filtradas = new ArrayList<>();
        // Hacemos un for each para recorrer y guardar las plataformas elegidas
        for (Plataforma p : DataBaseManager.plataformas) {
            // Si el id de categoria actual es el mismo que el id recibido lo añadimos al ArrayList
            if (p.getId_categoria() == idCategoria) {
                filtradas.add(p);
            }
        }

        while (true) {
            System.out.println("--- MENU PLATAFORMAS ---");
            int i = 1;
            
            System.out.println("[ 0 ] Salir");
            for (Plataforma p : filtradas) {
                System.out.println("[ " + i + " ] " + p.getNombre() );
                i ++;
            }
            
            System.out.print("Seleccione una plataformaHH -> ");
            int opcion =  Integer.parseInt(sc.nextLine() );
            System.out.println("");

            if (opcion == 0){
                break;
            }
            
            if (opcion > 0 && opcion <= filtradas.size() ) {
                Plataforma seleccionada = filtradas.get(opcion - 1);
                mostrarPlanes(seleccionada.getId_plataforma() );
            }
            break;
        }
    }

    private static void mostrarPlanes(int idPlataforma) {
        System.out.println("--- PLANES DISPONIBLES ---");
        for (Plan plan : DataBaseManager.planes) {
            if (plan.getId_plataforma() == idPlataforma) {
                System.out.println("- " + plan.getNombre_plan()+ " | Precio: " + plan.getPrecio() + "E | Max. dispositivos: " + plan.getDispositivos_maximos());
            }
        }
    }
   
    
}
