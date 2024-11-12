CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(20)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT UNIQUE,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(100),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(15)
);

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT UNIQUE,
    name VARCHAR(100),
    store VARCHAR(50)
);

DROP TABLE IF EXISTS Invoices ;
CREATE TABLE Invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES Cars(id),
    FOREIGN KEY (customer) REFERENCES Customers(id),
    FOREIGN KEY (salesperson) REFERENCES Salespersons(id)
);

SHOW CREATE TABLE Invoices;


