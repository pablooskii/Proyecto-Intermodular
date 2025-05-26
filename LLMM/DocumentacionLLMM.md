# Proyecto: Práctica Intermodular

## Documentación - Lenguaje de Marcas

Este repositorio contiene la documentación del proyecto de **Lenguaje de Marcas** correspondiente a la **Práctica Intermodular**.  
Se ha trabajado con las tecnologías **HTML**, **CSS** y **JavaScript** para representar datos de una base de datos de plataformas digitales y mejorar la experiencia de usuario.

---

## HTML

El archivo `index.html` estructura toda la información del sistema. Incluye:

- Encabezado (`<header>`) con el título del proyecto y nombres del grupo.
- Tres secciones principales:
  - **Introducción**: Descripción general del proyecto.
  - **Datos**: Representación de las tablas `categorías`, `plataformas` y `planes` con datos en HTML.
  - **Interacción**: Botón para cambiar el tema claro/oscuro.
- Pie de página (`<footer>`) con el nombre del grupo.

Se usaron etiquetas semánticas como `<section>`, `<article>`, `<table>`, `<thead>`, `<tbody>`, y enlaces (`<a>`) hacia páginas oficiales de plataformas digitales.

---

## CSS

El archivo `styles.css` contiene:

- **Reset general** de márgenes y paddings.
- Tipografía base y colores accesibles para modo claro.
- Estilización completa de:
  - Encabezados, tablas, botones y enlaces.
  - Interfaz responsiva y legible.
- **Modo oscuro** activable con una clase (`dark-theme`) que:
  - Cambia el fondo, texto y colores de bordes/tablas.
  - Adapta botones y enlaces al nuevo contraste.

---

## JavaScript

El archivo `script.js` añade interactividad al proyecto:

- Controla el botón con `id="btnToggleTheme"`.
- Permite **alternar entre modo claro y oscuro** mediante `classList.toggle('dark-theme')`.
- Cambia dinámicamente el **texto del botón** según el modo activo:
  - "Cambiar a Tema Oscuro" / "Cambiar a Tema Claro".

---

## Conclusión

Este proyecto integra las tecnologías web básicas para presentar una base de datos de forma visual e interactiva.  
Los estilos adaptativos y el cambio de tema enriquecen la experiencia del usuario, manteniendo una estructura clara y accesible.

---

## Imagen
![Captura de pantalla 2025-05-26 133938](https://github.com/user-attachments/assets/3ebab495-b818-4d5b-9012-104d1096996e)


