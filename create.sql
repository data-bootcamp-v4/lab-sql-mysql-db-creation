CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(45),
    manufacturer VARCHAR(45),
    model VARCHAR(100),
    year YEAR,
    color VARCHAR(45)
);

CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(10),
    name VARCHAR(60),
    phone_number VARCHAR(20),
    email VARCHAR(45),
    address VARCHAR(200),
    city VARCHAR(45),
    state_province VARCHAR(45),
    country VARCHAR(45),
    zip_postal CHAR(5)
);

CREATE TABLE Salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10),
    name VARCHAR(45),
    store VARCHAR(45)
);

CREATE TABLE Invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(id),
    FOREIGN KEY (customer_id) REFERENCES Customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id)
);
