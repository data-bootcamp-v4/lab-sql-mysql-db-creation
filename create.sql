CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


-- 	CARS TABLE
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
	vin VARCHAR(30) UNIQUE NOT NULL, 
    manufacturer VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	year YEAR(4) NOT NULL, 
    color VARCHAR(50) NOT NULL
);

-- CUSTOMERS TABLE
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria autoincrementable
    name VARCHAR(50) NOT NULL,                  -- Nombre, obligatorio
    surname VARCHAR(50) NOT NULL,               -- Apellido, obligatorio
    phone VARCHAR(20),                          -- Teléfono (longitud ajustada)
    email VARCHAR(100) NOT NULL UNIQUE,         -- Email, obligatorio y único
    address VARCHAR(100),                       -- Dirección
    city VARCHAR(50),                           -- Ciudad
    state VARCHAR(50),                          -- Estado
    province VARCHAR(50),                       -- Provincia
    zipcode VARCHAR(10),                        -- Código postal (mejor como VARCHAR)
    birth DATE NOT NULL,                        -- Fecha de nacimiento, obligatoria
    gender ENUM('M', 'F', 'O')                  -- Género con valores restringidos
);


-- SALESPERSONS TABLE
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria autoincrementable
    name VARCHAR(50) NOT NULL,                     -- Nombre, obligatorio
    store VARCHAR(50) NOT NULL                     -- Tienda, obligatoria
);


-- INVOICES TABLE
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria autoincrementable
    number VARCHAR(20) NOT NULL UNIQUE,         -- Número de factura, obligatorio y único
    date DATE NOT NULL,                         -- Fecha de factura, obligatoria
    car INT NOT NULL,                           -- ID del coche, obligatorio
    customer INT NOT NULL,                      -- ID del cliente, obligatorio
    salesperson INT NOT NULL,                   -- ID del vendedor, obligatorio
    FOREIGN KEY (car) REFERENCES cars(car_id),  -- Clave foránea para coche
    FOREIGN KEY (customer) REFERENCES customers(customer_id),  -- Clave foránea para cliente
    FOREIGN KEY (salesperson) REFERENCES salespersons(salesperson_id)  -- Clave foránea para vendedor
);