-- Crear DB
-- 1. Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS cliente;

-- 2. Seleccionar la base de datos
USE cliente;

-- 3. Crear la tabla contactos
CREATE TABLE IF NOT EXISTS contactos (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    telefono VARCHAR(20),
    correo VARCHAR(100)
);

-- Poblar DB
USE cliente;

INSERT INTO contactos (nombre, direccion, telefono, correo) VALUES
('Steve Jobs', '1 Infinite Loop, Cupertino, CA', '408-996-1010', 'sjobs@apple.com'),
('Linus Torvalds', 'Portland, Oregon', '503-555-0199', 'torvalds@kernel.org'),
('Bill Gates', 'One Microsoft Way, Redmond, WA', '425-882-8080', 'bgates@microsoft.com'),
('Steve Wozniak', 'Los Altos, California', '408-555-0142', 'woz@apple.com'),
('Paul Allen', 'Seattle, Washington', '206-555-0188', 'paul@microsoft.com'),
('Ada Lovelace', 'London, United Kingdom', '044-20-7946', 'ada@computational.org'),
('Alan Turing', 'Wilmslow, Cheshire', '044-16-1496', 'turing@bletchley.org'),
('Dennis Ritchie', 'Murray Hill, New Jersey', '908-582-3000', 'dmr@bell-labs.com'),
('Ken Thompson', 'Palo Alto, California', '650-555-0123', 'ken@unix.org'),
('Tim Berners-Lee', 'London, United Kingdom', '044-20-7988', 'timbl@w3.org');

-- NO OLVIDES EL JAR
