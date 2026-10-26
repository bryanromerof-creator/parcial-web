CREATE DATABASE proyecto_web;
USE proyecto_web;

-- TABLA 1: Categorías
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL
);

-- TABLA 2: Productos
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(150) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

INSERT INTO categorias (nombre_categoria) VALUES ('Tecnología'), ('Accesorios');
INSERT INTO productos (nombre_producto, precio, id_categoria) VALUES ('Teclado Mecánico', 150000, 1), ('Mouse Gamer', 80000, 2);
