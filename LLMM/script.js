let estiloAlternativo = false;

function cambiarEstilo() {
  if (!estiloAlternativo) {
    document.documentElement.style.setProperty('--bg-color', '#111111');
    document.documentElement.style.setProperty('--text-color', '#f0f0f0');
    document.documentElement.style.setProperty('--accent-color', '#00ced1');
    document.documentElement.style.setProperty('--table-bg', '#222222');
  } else {
    document.documentElement.style.setProperty('--bg-color', '#ffffff');
    document.documentElement.style.setProperty('--text-color', '#111111');
    document.documentElement.style.setProperty('--accent-color', '#1e90ff');
    document.documentElement.style.setProperty('--table-bg', '#f5f5f5');
  }
  estiloAlternativo = !estiloAlternativo;
}

function toggleStyle() {
  document.body.classList.toggle('dark-mode');
}
