CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Tabla Cars
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    vin VARCHAR(17) NOT NULL UNIQUE, 
    manufacturer VARCHAR(40), 
    model VARCHAR(40), 
    car_year YEAR, 
    color VARCHAR(40)
);

-- Tabla Customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    cust_id INT NOT NULL UNIQUE, 
    cust_name VARCHAR(50), 
    cust_phone VARCHAR(50), 
    cust_email VARCHAR(50), 
    cust_address VARCHAR(100), 
    cust_city VARCHAR(50), 
    cust_state VARCHAR(50), 
    cust_country VARCHAR(50), 
    cust_zipcode VARCHAR(10)
);

-- Tabla Salespersons
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    staff_id INT NOT NULL UNIQUE, 
    name VARCHAR(50), 
    store VARCHAR(50)
);

-- Tabla Invoices
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    invoice_number BIGINT NOT NULL UNIQUE, 
    date DATE, 
    car INT, 
    customer INT, 
    salesperson INT, 
    FOREIGN KEY (car) REFERENCES cars(id), 
    FOREIGN KEY (customer) REFERENCES customers(id), 
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);
