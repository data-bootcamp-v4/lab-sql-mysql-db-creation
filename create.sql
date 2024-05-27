CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Cars;

-- Create the Cars table
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20) UNIQUE NOT NULL,
    manufacturer VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    year YEAR,
    color VARCHAR(12)
);

DROP TABLE IF EXISTS Salespersons;

-- Create the Salespersons table
CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) UNIQUE NOT NULL,
    name CHAR(40) NOT NULL,
    store VARCHAR(40)
);

DROP TABLE IF EXISTS Customers;

-- Create the Customers table
CREATE TABLE Customers (
    auto_customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(10) UNIQUE NOT NULL,
    name CHAR(40) NOT NULL,
    phone_number int NOT NULL,
    email VARCHAR(50),
    address VARCHAR(50),
    city CHAR(20),
    state_province CHAR(20),
    country CHAR(20),
    zip_postal_code int
);

DROP TABLE IF EXISTS Invoices;

-- Create the Invoices table
CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) UNIQUE NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    auto_customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (auto_customer_id) REFERENCES Customers(auto_customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);




