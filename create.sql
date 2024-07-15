CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


CREATE TABLE if not exists cars (
	CarID INT AUTO_INCREMENT PRIMARY KEY,
    VIN Varchar(50) UNIQUE NOT NULL,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(50)
);


CREATE TABLE if not exists customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    phonenumber VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20)
);


CREATE TABLE if not exists salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staffID INT,
    name VARCHAR(50),
    store VARCHAR(50)
);



CREATE TABLE IF NOT EXISTS Invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number BIGINT NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_vin VARCHAR(50) NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_vin) REFERENCES Cars(VIN),
    FOREIGN KEY (customer_id) REFERENCES Customers(CustomerID),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id)
);