-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Usar la base de datos creada
USE lab_mysql;

-- Eliminar las tablas si ya existen para evitar errores
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;

-- Crear tabla Cars
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID de coche auto-incremental
    vin VARCHAR(17) NOT NULL,               -- Número de identificación del vehículo (VIN)
    manufacturer VARCHAR(50) NOT NULL,      -- Fabricante del coche
    model VARCHAR(50) NOT NULL,             -- Modelo del coche
    year YEAR NOT NULL,                     -- Año de fabricación del coche
    color VARCHAR(20)                       -- Color del coche
);

-- Crear tabla Customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY, -- ID de cliente auto-incremental
    name VARCHAR(100) NOT NULL,                 -- Nombre del cliente
    phone_number VARCHAR(20),                   -- Número de teléfono del cliente
    email VARCHAR(100),                         -- Correo electrónico del cliente
    address VARCHAR(255),                       -- Dirección del cliente
    city VARCHAR(50),                           -- Ciudad del cliente
    state_province VARCHAR(50),                 -- Estado/Provincia del cliente
    country VARCHAR(50),                        -- País del cliente
    postal_code VARCHAR(10)                     -- Código postal del cliente
);

-- Crear tabla Salespersons
CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY, -- ID del vendedor auto-incremental
    name VARCHAR(100) NOT NULL,                    -- Nombre del vendedor
    store VARCHAR(100)                             -- Tienda donde trabaja el vendedor
);

-- Crear tabla Invoices
CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,     -- ID de factura auto-incremental
    date DATE NOT NULL,                            -- Fecha de la factura
    car_id INT NOT NULL,                           -- ID del coche vendido (clave foránea)
    customer_id INT NOT NULL,                      -- ID del cliente (clave foránea)
    salesperson_id INT NOT NULL,                   -- ID del vendedor (clave foránea),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),  -- Relación con la tabla Cars
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),  -- Relación con la tabla Customers
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)  -- Relación con la tabla Salespersons
);


