-- Crear base de datos
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Tabla users
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Tabla orders
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    total DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS coches;

CREATE TABLE coches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    fabricante VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    color VARCHAR(50)
);

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(50),
    ciudad VARCHAR(50)
);

DROP TABLE IF EXISTS vendedores;

CREATE TABLE vendedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(50)
);

DROP TABLE IF EXISTS facturas;

CREATE TABLE facturas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_factura INT,
    fecha DATE,
    coche_id INT,
    cliente_id INT,
    vendedor_id INT,
    FOREIGN KEY (coche_id) REFERENCES coches(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);

SELECT * FROM coches;
SELECT * FROM clientes;
SELECT * FROM vendedores;
SELECT * FROM facturas;