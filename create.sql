CREATE DATABASE IF NOT EXISTS car_dealership;

USE car_dealership;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(15)
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(30) NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT NOT NULL UNIQUE,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,

    FOREIGN KEY (car_id) REFERENCES cars(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    FOREIGN KEY (customer_id) REFERENCES customers(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
USE car_dealership;

DESCRIBE invoices;
