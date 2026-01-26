CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE cars(
    id_auto INT AUTO_INCREMENT, 
    vin VARCHAR(50) NOT NULL,
    fabricante VARCHAR(30),
    modelo VARCHAR(100),
    color ENUM('blanco', 'negro', 'rojo', 'gris', 'azul', 'verde'),
    año INT,
    stock INT,
    PRIMARY KEY (id_auto),
    CONSTRAINT auto_disponible CHECK (stock >= 0)
);


CREATE TABLE customers(
    id_cliente INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    telefono INT, 
    mail VARCHAR(50),
    direccion VARCHAR(60),
    ciudad VARCHAR(60) DEFAULT "Madrid",
    provincia VARCHAR(60),
    pais VARCHAR(70) DEFAULT "España",
    codigo_postal INT,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE sales_persons(
    id_personal INT AUTO_INCREMENT,
    nombre VARCHAR(80),
    tienda VARCHAR(80),
    PRIMARY KEY(id_personal)
);

CREATE TABLE invoices(
    id_factura INT AUTO_INCREMENT,
    num_factura INT,
    fecha DATETIME,
    id_auto INT, 
    id_cliente INT, 
    id_personal INT, 
    PRIMARY KEY (id_factura),
    FOREIGN KEY (id_auto) REFERENCES cars(id_auto) ON DELETE CASCADE,
    FOREIGN KEY (id_cliente) REFERENCES customers(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_personal) REFERENCES sales_persons(id_personal) ON DELETE CASCADE
);

ALTER TABLE customers 
MODIFY COLUMN telefono VARCHAR(20);

