CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS facturas;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS vendedores;
DROP TABLE IF EXISTS coches;

CREATE TABLE clientes (
id INT AUTO_INCREMENT,
id_cliente INT,
nombre VARCHAR(100),
teléfono VARCHAR(30),
email VARCHAR(100),
dirección VARCHAR(150),
ciudad VARCHAR(50),
estado VARCHAR(50),
país VARCHAR(50),
código_postal VARCHAR(10),
PRIMARY KEY(id)
);

CREATE TABLE vendedores (
id INT AUTO_INCREMENT,
id_empleado CHAR(5),
nombre VARCHAR(100),
tienda VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE coches (
id_coche INT AUTO_INCREMENT,
VIN CHAR (17),
fabricante VARCHAR(50),
modelo VARCHAR(50),
año YEAR,
color VARCHAR (20),
PRIMARY KEY(id_coche)
);

CREATE TABLE facturas (
id INT AUTO_INCREMENT,
invoice INT,
fecha DATE,
id_coche INT UNIQUE,
id_cliente INT,
id_empleado INT, 
PRIMARY KEY(id),
FOREIGN KEY (id_coche) REFERENCES coches (id_coche),
FOREIGN KEY (id_cliente) REFERENCES clientes (id),
FOREIGN KEY (id_empleado) REFERENCES vendedores (id)
);