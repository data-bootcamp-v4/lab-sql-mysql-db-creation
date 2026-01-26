-- Crear la base de datos --
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Borrar tablas si existen para poder ejecutar el script varias veces sin errores --
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Tabla de Coches --
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

-- Tabla de Clientes
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Tabla de Vendedores
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL,
    name VARCHAR(100),
    store VARCHAR(50)
);

-- Tabla de Facturas (esta conecta a todas las demás)
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    date DATE,
    car INT,
    customer INT,
    salesperson INT
);


USE lab_mysql;

-- Insertar coches
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

-- Insertar clientes (fíjate que ponemos '-' en email como dice el lab)
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_country, cust_zipcode)
VALUES (10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Spain', '28045');

-- Insertar vendedores
INSERT INTO salespersons (staff_id, name, store)
VALUES ('00001', 'Petey Cruiser', 'Madrid'),
       ('00002', 'Anna Sthesia', 'Barcelona');

USE lab_mysql;

-- Desactivar el modo seguro para poder actualizar por nombre
SET SQL_SAFE_UPDATES = 0;

-- Actualizar los correos electrónicos de los clientes
UPDATE customers 
SET cust_email = 'ppicasso@gmail.com' 
WHERE cust_name = 'Pablo Picasso';

UPDATE customers 
SET cust_email = 'lincoln@us.gov' 
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers 
SET cust_email = 'hello@napoleon.me' 
WHERE cust_name = 'Napoléon Bonaparte';

-- Volver a activar el modo seguro (buena práctica)
SET SQL_SAFE_UPDATES = 1;

USE lab_mysql;

-- Eliminar el registro duplicado por su ID
DELETE FROM cars 
WHERE id = 4;












