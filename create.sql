CREATE DATABASE IF NOT EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vin VARCHAR(100) PRIMARY KEY,
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(50)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_postal_code VARCHAR(20)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    store VARCHAR(100)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY AUTO_INCREMENT,
    date DATE,
    car_vin VARCHAR(100),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (car_vin) REFERENCES cars(vin),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);



