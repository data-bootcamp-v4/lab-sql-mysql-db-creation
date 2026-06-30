CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


CREATE TABLE cars (
    vin VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(30),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(100)
);

CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY,
    invoice_date DATE,
    car_vin VARCHAR(17),
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_vin) REFERENCES cars(vin),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id)
);

