-- Seleccionar la base de datos
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Tabla Cars
DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    car_id INT(11) PRIMARY KEY,
    vin VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT(4),
    color VARCHAR(30)
);

-- Tabla Customers
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id INT(11) PRIMARY KEY,
    customer_name VARCHAR(30),
    phone_number VARCHAR(20),
    email VARCHAR(30),
    address VARCHAR(50),
    city VARCHAR(30),
    state VARCHAR(30),
    country VARCHAR(30),
    postal_code VARCHAR(10)
);

-- Tabla Salespersons
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    staff_id INT(11) PRIMARY KEY,
    name VARCHAR(50),
    store VARCHAR(50)
);

-- Tabla Invoices
DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
    invoice_id INT(11) PRIMARY KEY,
    invoice_number VARCHAR(20) UNIQUE,
    date DATE,
    car_id INT(11),
    customer_id INT(11),
    salesperson_id INT(11),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(staff_id)
);
