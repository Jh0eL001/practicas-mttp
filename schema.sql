-- 1. Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS bd_ventas;
USE bd_ventas;

-- 2. Eliminar la tabla si ya existía para evitar conflictos al re-importar
DROP TABLE IF EXISTS productos;

-- 3. Crear la estructura de la tabla productos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    descuento DECIMAL(5,2) DEFAULT 0.00
);

-- 4. Insertar los datos iniciales y los que agregamos hoy
INSERT INTO productos (nombre, precio, descuento) VALUES 
('Lata de Pintura 1L', 25.00, 0.05),
('Rodillo Sintético', 15.50, 0.00),
('Brocha 2 Pulgadas', 8.00, 0.02),
('Pintura Látex 4L', 85.00, 0.10),
('Cinta de Enmascarar', 5.50, 0.00),
('Espátula 3 Pulgadas', 12.00, 0.05),
('Lija para Madera', 2.50, 0.00);
