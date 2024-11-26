-- Como me he equivocado, quiero borrarla y volver a crearla
-- DROP DATABASE lab_mysql;

-- Crear la base de datos 
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Usar la base de datos
USE lab_mysql;

-- Crear las diferentes tablas 

-- Crear la tabla coches
CREATE TABLE coches(
coche_id_pk INT AUTO_INCREMENT PRIMARY KEY,
coche_pkid CHAR(17),
fabricante VARCHAR(50),
modelo VARCHAR(50),
año YEAR,
color VARCHAR (50)
);

CREATE TABLE clientes (
cliente_id_pk INT AUTO_INCREMENT PRIMARY KEY,
cliente_pkid INT,
nombre VARCHAR (50),
telefono VARCHAR (50),
correo VARCHAR (50),
direccion VARCHAR (100),
ciudad VARCHAR(50),
provincia VARCHAR(50),
pais VARCHAR(50),
codigo_postal VARCHAR (50)
);

CREATE TABLE vendedores (
vendedor_id_pk INT AUTO_INCREMENT PRIMARY KEY,
vendedor_pkid INT,
nombre VARCHAR(50),
tienda VARCHAR (50)
);

CREATE TABLE facturas (
factura_id_pk INT AUTO_INCREMENT PRIMARY KEY,
factura_pkid INT,
fecha DATE,
cliente_id_pk INT,
vendedor_id_pk INT,
coche_id_pk INT,
FOREIGN KEY (cliente_id_pk) REFERENCES clientes(cliente_id_pk),
FOREIGN KEY (vendedor_id_pk) REFERENCES vendedores(vendedor_id_pk),
FOREIGN KEY (coche_id_pk) REFERENCES coches(coche_id_pk)
);

