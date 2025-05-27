# 🧩 Práctica Intermodular – 1º DAM

## 📚 Asignaturas Implicadas

Este proyecto forma parte de una práctica intermodular en la que se integran los contenidos de las siguientes asignaturas:

- **Programación**
- **Bases de Datos**
- **Entornos de Desarrollo**
- **Sistemas Informáticos**
- **Lenguajes de Marca**

---

## 🎯 Objetivo del Proyecto

Desarrollar una **aplicación informativa en consola** que consulte datos de una **base de datos en AWS**, acompañada de una **web estática explicativa** y desplegada en una isntacian de AWS.

---

## 🌍 Temática del Proyecto
Estructura jerárquica de los datos:

1. **Categoría (Nivel 1):** _Ej. Entretenimiento, Música..._
2. **Plataformas (Nivel 2):** _Ej. Spotify, Youtube..._
3. **Planes:** _Ej. Estandar, Premium..._

---

## 🧑‍💻 Estructura del Proyecto

### `/Programacion`

- **Lenguaje:** Java
- **Clases principales:**
  - `Main.java`: Se crea una instancia de DataBaseManager 
  - `DataBaseManager.java`: Conexión y carga de datos desde la base de datos
  - `Categoria.java`, `Plataforma.java`, `Plan.java`: Clases orientadas a objetos
  - `Menu.java`: Menú interactivo que llama la los metodos correspondientes 
- **Funcionamiento general:**
  - Todos los datos se cargan en memoria al iniciar usando Arraylist de dichos objetos.
  - El usuario puede consultar categorías, plataformas y sus planes.
  - Control de errores mediante excepciones.

---

### `/BBDD`

- **Modelo de base de datos relacional** con diagrama E/R.
- **Scripts SQL:**
  - Borrado y creación de la base de datos (`practica_intermodular`)
  - Tablas con claves primarias y foráneas
  - Inserciones de prueba
- **MySQLL:**
  - Trigger para añadir la fecha de creación de registros automáticamente.
  - Trigger o función para actualizar campos derivados (como número de elementos relacionados).

---

### `/LLMM`

- **Lenguajes:** HTML + CSS + JavaScript
- **Contenidos de la web:**
  - Demostración visuales de las tablas de la Base de Datos y uso interactivo de JavaScrip
- **Características técnicas:**
  - Uso de etiquetas HTML semánticas (`<header>`, `<section>`, `<article>`, `<table>`, etc.)
  - CSS externo para estilos
  - JavaScript para interacciones DOM (eventos, cambios de estilo, etc.)

---

### `/Sistemas`

- **Despliegue en la nube con AWS (EC2):**
  - Instancia en Linux/Windows
  - Servidor web (Apache o Nginx)
  - Archivos web transferidos vía SCP/SFTP
  - Sitio accesible públicamente
- **Documentación:** Capturas y explicación detallada del proceso (`despliegue_aws.md`)

---

### `/Entornos-Desarrollo`

- **Gestión del desarrollo:**
  - Repositorio GitHub colaborativo
  - Ramas por cada miembro del grupo
  - Commits claros y frecuentes
- **Documentación:**
  - Diagrama de casos de uso y Historial de trabajo (`Documentacion-Entornos.md`)

---

## 📁 Estructura del Repositorio

```bash
/programacion
├── Main.java ├── DataBaseManager.java ├── Menu.java ├── Categoria.java ├── Plataforma.java ├── Plan.java
├── Documentacion.md

/lenguajes
├── index.html
├── styles.css
├── script.js
├── DocumentacionLLMM.md

/bbdd
├── diagramas.md
├── scripts/
│   ├── crear_bd.sql
│   ├── inserts.sql
│   ├── triggers.sql

/sistemas
├── despliegue_aws.md

/entornos
├── Documetnacion-Entornos.md
