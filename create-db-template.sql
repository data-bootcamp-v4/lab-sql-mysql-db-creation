-- Active: 1721290976264@@127.0.0.1@3306
CREATE DATABASE dealership;
USE dealership;

CREATE TABLE cars (
    vin VARCHAR(30) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(30),
    year_car INT(4),
    color VARCHAR(10),
    id INT
);
CREATE TABLE customers (
    customer_ID INT PRIMARY KEY,
    name VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20)
);
CREATE TABLE Salespersons (
    staff_ID INT PRIMARY KEY,
    name VARCHAR(50),
    store VARCHAR(50)
);
CREATE TABLE Invoices (
    invoice_number INT PRIMARY KEY,
    invoice_dates DATE,
    car_id INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car_id) REFERENCES cars(vin),
    FOREIGN KEY (customer) REFERENCES customers(customer_ID),
    FOREIGN KEY (salesperson) REFERENCES Salespersons(staff_ID)
);