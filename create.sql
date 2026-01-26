CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE auto (
	vin INT PRIMARY KEY,
    maufacturer VARCHAR (20),
    model VARCHAR (20),
    year INT,
    color ENUM ('blanco','negro','gris')
    );

CREATE TABLE clientes (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (20),
telephone VARCHAR (30),
email VARCHAR (50) UNIQUE,
address VARCHAR (50),
city VARCHAR (30),
state VARCHAR (30),
country VARCHAR (30),
zip_code VARCHAR (10)
);

CREATE TABLE vendedores (
id_staff INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (20),
store VARCHAR (20)
);

CREATE TABLE facturas (
invoice_number INT AUTO_INCREMENT PRIMARY KEY,
date DATETIME,
auto_vin INT,  
cliente_id INT,
vendedor_id INt,
FOREIGN KEY (cliente_id) REFERENCES clientes (id),
FOREIGN KEY (auto_vin) REFERENCES auto (vin),
FOREIGN KEY (vendedor_id) REFERENCES vendedores (id_staff)
);
