-- DROP DATABASE Lab_MySQL;

CREATE DATABASE Lab_MySQL;

USE Lab_MySQL;

CREATE TABLE Coches (
	Coches_pkid INT AUTO_INCREMENT PRIMARY KEY,
    coche_id  CHAR(17),
    fabricante VARCHAR(50),
    modelo VARCHAR(50),
    año_vehiculo YEAR,
    color VARCHAR(50)
    );

CREATE TABLE Clientes (
Clientes_pkid INT AUTO_INCREMENT PRIMARY KEY,
cliente_id CHAR(5),
cliente VARCHAR (50),
tlf VARCHAR (20),
email VARCHAR (40),
cl_direccion VARCHAR (69),
Ciudad VARCHAR (23),
País VARCHAR (25),
CP INT);

CREATE TABLE Vendedores (
Vendedores_pkid INT AUTO_INCREMENT PRIMARY KEY,
vendedor_id INT,
vendedor VARCHAR (20),
tienda VARCHAR (25));

CREATE TABLE Facturas ( 
Facturas_pkid INT AUTO_INCREMENT PRIMARY KEY,
n_factura INT,
fecha DATE,
coche INT,
cliente INT,
vendedor INT,
FOREIGN KEY (coche) REFERENCES Coches(Coches_pkid),
FOREIGN KEY (cliente) REFERENCES Clientes(Clientes_pkid),
FOREIGN KEY (vendedor) REFERENCES Vendedores(Vendedores_pkid));



