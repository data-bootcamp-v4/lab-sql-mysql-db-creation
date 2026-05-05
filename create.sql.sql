-- Create database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars (
    VIN VARCHAR(45) PRIMARY KEY,
    manufacturer VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(45)
);
CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    `Customer ID` INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    `phone number` VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(45),
    `state/province` VARCHAR(45),
    country VARCHAR(45),
    `zip/postal code` VARCHAR(45)
);

 CREATE TABLE Salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    `staff ID` INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);
CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    `invoice number` INT NOT NULL UNIQUE,
    date DATE NOT NULL,
    VIN VARCHAR(45) NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,

    CONSTRAINT fk_invoice_car
        FOREIGN KEY (VIN) REFERENCES Cars(VIN),

    CONSTRAINT fk_invoice_customer
        FOREIGN KEY (customer_id) REFERENCES Customers(id),

    CONSTRAINT fk_invoice_salesperson
        FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id)
);

   


