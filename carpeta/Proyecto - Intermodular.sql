-- Borrado previo de la base de datos si existe
DROP DATABASE IF EXISTS practica_intermodular;

-- Creaci�n de la base de datos
CREATE DATABASE practica_intermodular;
a
-- Usar la base de datos
USE practica_intermodular;

-- Tabla Categor�as
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255),
    num_plataformas INT DEFAULT 0 
);

-- Tabla Plataformas
CREATE TABLE plataformas (
    id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    fecha_creacion TIMESTAMP,
    descripcion TEXT,
    fundadores VARCHAR(255),
    sitio_web VARCHAR(255),
    CONSTRAINT fk_plataforma_categoria FOREIGN KEY (id_categoria) 
        REFERENCES categorias(id_categoria) ON DELETE RESTRICT
);

-- Trigger 1: A�ade autom�ticamente la fecha de creaci�n
CREATE TRIGGER before_plataforma_insert
BEFORE INSERT ON plataformas
FOR EACH ROW
BEGIN
    SET NEW.fecha_creacion = CURRENT_TIMESTAMP;
END;


-- Trigger 2: Actualiza el contador de plataformas en categor�as
CREATE TRIGGER after_plataforma_insert
AFTER INSERT ON plataformas
FOR EACH ROW
BEGIN
    UPDATE categorias 
    SET num_plataformas = num_plataformas + 1
    WHERE id_categoria = NEW.id_categoria;
END;

-- Inserci�n de datos en Categor�as
INSERT INTO categorias (nombre, descripcion) VALUES
('Streaming', 'Plataformas de transmisi�n de video'),
('M�sica', 'Plataformas de transmisi�n de m�sica'),
('Entretenimiento', 'Plataformas de contenido variado'),
('Juegos', 'Plataformas de videojuegos'),
('Lectura', 'Plataformas de libros y lectura digital');

-- Insercion de datos en Plataformas (el trigger a�ade la fecha)
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(1, 'Netflix', 'Plataforma de streaming de pel�culas y series', 'Reed Hastings, Marc Randolph', 'https://www.netflix.com'),
(1, 'Disney+', 'Plataforma de streaming de Disney, Pixar, Marvel y m�s', 'The Walt Disney Company', 'https://www.disneyplus.com'),
(2, 'Spotify', 'Plataforma de streaming de m�sica', 'Daniel Ek, Martin Lorentzon', 'https://www.spotify.com'),
(2, 'Apple Music', 'Servicio de streaming de m�sica de Apple', 'Apple Inc.', 'https://music.apple.com'),
(3, 'YouTube', 'Plataforma de videos en l�nea', 'Steve Chen, Chad Hurley, Jawed Karim', 'https://www.youtube.com'),
(4, 'Brawl Stars', 'Juego m�vil de supercell', 'Supercell', 'https://supercell.com/en/games/brawlstars/'),
(5, 'Kindle', 'Plataforma de libros electr�nicos de Amazon', 'Amazon', 'https://www.amazon.com/kindle');