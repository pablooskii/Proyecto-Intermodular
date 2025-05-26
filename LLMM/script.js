// script.js

// Cambia el tema claro/oscuro al pulsar el botón
const btnToggle = document.getElementById('btnToggleTheme');

btnToggle.addEventListener('click', () => {
    document.body.classList.toggle('dark-theme');

    // Cambiar texto del botón según tema actual
    if (document.body.classList.contains('dark-theme')) {
        btnToggle.textContent = 'Cambiar a Tema Claro';
    } else {
        btnToggle.textContent = 'Cambiar a Tema Oscuro';
    }
});
