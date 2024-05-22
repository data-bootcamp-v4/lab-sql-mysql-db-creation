-- Challenge 1 - Design the Database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(50) NOT NULL
);
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_postal_code VARCHAR(20)
);

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);

-- Challenge 2 - Create the Database AND Tables
-- 
