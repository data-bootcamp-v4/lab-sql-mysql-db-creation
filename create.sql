CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Salesperson;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Cars;


CREATE TABLE Cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN CHAR(20) UNIQUE,
    manufacturer VARCHAR(20),
    model VARCHAR(20),
    year YEAR,
    color CHAR(10)
);


CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_ID CHAR(5) UNIQUE,
    name VARCHAR(40),
    phone_number CHAR(20),
    email VARCHAR(30),
    address VARCHAR(40),
    city CHAR(20),
    state_province CHAR(20),
    country VARCHAR(30),
    zip_postal_code CHAR(10)
);



CREATE TABLE Salesperson (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_ID CHAR(5) UNIQUE,
    name VARCHAR(40),
    store CHAR(20)
);



CREATE TABLE Invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number CHAR(10) UNIQUE,
    customer_ID CHAR(5),
    staff_ID CHAR(5),
    VIN CHAR(20),
    date DATE,
    FOREIGN KEY (customer_ID) REFERENCES Customers(customer_ID),
    FOREIGN KEY (staff_ID) REFERENCES Salesperson(staff_ID),
    FOREIGN KEY (VIN) REFERENCES Cars(VIN)
);
