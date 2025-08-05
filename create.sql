CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(20) NOT NULL
);


DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(25) NOT NULL,
    cust_email VARCHAR(100) NOT NULL,
    cust_address VARCHAR(100) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL
);


DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);


DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    FOREIGN KEY (car) REFERENCES Cars(id),
    FOREIGN KEY (customer) REFERENCES Customers(id),
    FOREIGN KEY (salesperson) REFERENCES Salespersons(id)
);
