-- Borrado previo de la base de datos si existe
DROP DATABASE IF EXISTS practica_intermodular;

-- Creacion de la base de datos
CREATE DATABASE practica_intermodular;

-- Usar la base de datos
USE practica_intermodular;

-- Tabla Categorias
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
    fecha_creacion TIMESTAMP NULL DEFAULT NULL,
    descripcion TEXT,
    fundadores VARCHAR(255),
    sitio_web VARCHAR(255),
    CONSTRAINT fk_plataforma_categoria FOREIGN KEY (id_categoria) 
        REFERENCES categorias(id_categoria) ON DELETE RESTRICT
);

-- Tabla Planes
CREATE TABLE planes (
    id_plan INT AUTO_INCREMENT PRIMARY KEY,
    id_plataforma INT NOT NULL,
    nombre_plan VARCHAR(100) NOT NULL,
    precio DECIMAL(6,2) NOT NULL,
    dispositivos_maximos INT DEFAULT 1,
    CONSTRAINT fk_plan_plataforma FOREIGN KEY (id_plataforma)
        REFERENCES plataformas(id_plataforma)
        ON DELETE CASCADE
);


-- Delimitador temporal para los triggers
DELIMITER //

-- Trigger 1: Añade automaticamente la fecha de creacion
CREATE TRIGGER fechaCreacion
BEFORE INSERT ON plataformas
FOR EACH ROW
BEGIN
    IF NEW.fecha_creacion IS NULL THEN
        SET NEW.fecha_creacion = CURRENT_TIMESTAMP;
    END IF;
END//

-- Trigger 2: Actualiza el contador de plataformas en categorias
CREATE TRIGGER actualizadorNum
AFTER INSERT ON plataformas
FOR EACH ROW
BEGIN
    UPDATE categorias 
    SET num_plataformas = num_plataformas + 1
    WHERE id_categoria = NEW.id_categoria;
END//

-- Restaurar el delimitador
DELIMITER ;

-- Insercion de datos en Categorias
INSERT INTO categorias (nombre, descripcion) VALUES
('Streaming', 'Plataformas de transmisi�n de video'),
('M�sica', 'Plataformas de transmisi�n de m�sica'),
('Entretenimiento', 'Plataformas de contenido variado'),
('Juegos', 'Plataformas de videojuegos'),
('Lectura', 'Plataformas de libros y lectura digital');

-- Insercion de datos en Plataformas
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(1, 'Netflix', 'Plataforma de streaming de pel�culas y series', 'Reed Hastings, Marc Randolph', 'https://www.netflix.com'),
(1, 'Disney+', 'Plataforma de streaming de Disney, Pixar, Marvel y m�s', 'The Walt Disney Company', 'https://www.disneyplus.com'),
(2, 'Spotify', 'Plataforma de streaming de m�sica', 'Daniel Ek, Martin Lorentzon', 'https://www.spotify.com'),
(2, 'Apple Music', 'Servicio de streaming de m�sica de Apple', 'Apple Inc.', 'https://music.apple.com'),
(3, 'YouTube', 'Plataforma de videos en l�nea', 'Steve Chen, Chad Hurley, Jawed Karim', 'https://www.youtube.com'),
(4, 'Brawl Stars', 'Juego m�vil de Supercell', 'Supercell', 'https://supercell.com/en/games/brawlstars/'),
(5, 'Kindle', 'Plataforma de libros electr�nicos de Amazon', 'Amazon', 'https://www.amazon.com/kindle');

-- Inserci�n de planes para las plataformas existentes
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES

-- Netflix
(1, 'Netflix B�sico', 7.99, 1),
(1, 'Netflix Est�ndar', 12.99, 2),
(1, 'Netflix Premium', 17.99, 4),
-- Disney+
(1, 'Disney+ Estandar', 8.99, 2),
(1, 'Disney+ Premium', 11.99, 4),
-- Spotify
(2, 'Spotify Free', 0.00, 1),
(2, 'Spotify Premium', 9.99, 3),
-- Apple Music
(2, 'Apple Music Individual', 10.99, 1),
(2, 'Apple Music Familiar', 16.99, 6),
-- YouTube
(3, 'YouTube Gratuito', 0.00, 1),
(3, 'YouTube Premium', 11.99, 2),
-- Brawl Stars (ejemplo simbolico, no tiene suscripciones tipicas)
(4, 'Acceso Gratuito', 0.00, 1),
-- Kindle
(5, 'Kindle Reading', 0, 1),
(5, 'Kindle Unlimited', 19.99, 1);