-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Create the Cars table
DROP TABLE IF EXISTS Cars;
-- Error Code: 3730. Cannot drop table 'cars' referenced by a foreign key constraint 'invoices_ibfk_1' on table 'Invoices'.

CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT CHECK (year >= 1886), -- Ensuring realistic car years
    color VARCHAR(30)
);

-- Create the Customers table
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number CHAR(20), -- Fixed-length for phone numbers
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20)
);

-- Create the Salespersons table
DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

-- Create the Invoices table
DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE SET NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id) ON DELETE SET NULL
);
