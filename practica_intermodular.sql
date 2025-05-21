-- Tabla Categorías
CREATE TABLE categorias (
    id_categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    descripcion VARCHAR2(255),
    num_plataformas NUMBER DEFAULT 0 
);

-- Tabla Plataformas
CREATE TABLE plataformas (
    id_plataforma NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_categoria NUMBER NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    fecha_creacion TIMESTAMP,
    descripcion CLOB,
    fundadores VARCHAR2(255),
    sitio_web VARCHAR2(255),
    CONSTRAINT fk_plataforma_categoria FOREIGN KEY (id_categoria) 
        REFERENCES categorias(id_categoria) ON DELETE CASCADE
);

-- Tabla Planes
CREATE TABLE planes (
    id_plan NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_plataforma NUMBER NOT NULL,
    nombre_plan VARCHAR2(100) NOT NULL,
    precio NUMBER(6,2) NOT NULL,
    dispositivos_maximos NUMBER DEFAULT 1,
    CONSTRAINT fk_plan_plataforma FOREIGN KEY (id_plataforma)
        REFERENCES plataformas(id_plataforma)
        ON DELETE CASCADE
);

-- Trigger 1: Añade automáticamente la fecha de creación
CREATE OR REPLACE TRIGGER fechaCreacion
BEFORE INSERT ON plataformas
FOR EACH ROW
BEGIN
    IF :NEW.fecha_creacion IS NULL THEN
        :NEW.fecha_creacion := CURRENT_TIMESTAMP;
    END IF;
END;
/

-- Trigger 2: Actualiza el contador de plataformas en categorías
CREATE OR REPLACE TRIGGER actualizadorNum
AFTER INSERT ON plataformas
FOR EACH ROW
BEGIN
    UPDATE categorias 
    SET num_plataformas = num_plataformas + 1
    WHERE id_categoria = :NEW.id_categoria;
END;
/

-- Inserción de datos en Categorías
INSERT INTO categorias (nombre, descripcion) VALUES
('Streaming', 'Plataformas de transmisión de video');
INSERT INTO categorias (nombre, descripcion) VALUES
('Música', 'Plataformas de transmisión de música');
INSERT INTO categorias (nombre, descripcion) VALUES
('Entretenimiento', 'Plataformas de contenido variado');
INSERT INTO categorias (nombre, descripcion) VALUES
('Juegos', 'Plataformas de videojuegos');
INSERT INTO categorias (nombre, descripcion) VALUES
('Lectura', 'Plataformas de libros y lectura digital');

-- Inserción de datos en Plataformas
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(1, 'Netflix', 'Plataforma de streaming de películas y series', 'Reed Hastings, Marc Randolph', 'https://www.netflix.com');
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(1, 'Disney+', 'Plataforma de streaming de Disney, Pixar, Marvel y más', 'The Walt Disney Company', 'https://www.disneyplus.com');
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(2, 'Spotify', 'Plataforma de streaming de música', 'Daniel Ek, Martin Lorentzon', 'https://www.spotify.com');
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(2, 'Apple Music', 'Servicio de streaming de música de Apple', 'Apple Inc.', 'https://music.apple.com');
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(3, 'YouTube', 'Plataforma de videos en línea', 'Steve Chen, Chad Hurley, Jawed Karim', 'https://www.youtube.com');
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(4, 'Brawl Stars', 'Juego móvil de Supercell', 'Supercell', 'https://supercell.com/en/games/brawlstars/');
INSERT INTO plataformas (id_categoria, nombre, descripcion, fundadores, sitio_web) VALUES
(5, 'Kindle', 'Plataforma de libros electrónicos de Amazon', 'Amazon', 'https://www.amazon.com/kindle');

-- Inserción de planes para las plataformas existentes
-- Netflix
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(1, 'Netflix Básico', 7.99, 1);
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(1, 'Netflix Estándar', 12.99, 2);
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(1, 'Netflix Premium', 17.99, 4);
-- Disney+
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(2, 'Disney+ Estandar', 8.99, 2);
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(2, 'Disney+ Premium', 11.99, 4);
-- Spotify
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(3, 'Spotify Free', 0.00, 1);
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(3, 'Spotify Premium', 9.99, 3);
-- Apple Music
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(4, 'Apple Music Individual', 10.99, 1);
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(4, 'Apple Music Familiar', 16.99, 6);
-- YouTube
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(5, 'YouTube Gratuito', 0.00, 1);
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(5, 'YouTube Premium', 11.99, 2);
-- Brawl Stars
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(6, 'Acceso Gratuito', 0.00, 1);
-- Kindle
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(7, 'Kindle Reading', 0, 1);
INSERT INTO planes (id_plataforma, nombre_plan, precio, dispositivos_maximos) VALUES
(7, 'Kindle Unlimited', 19.99, 1);
