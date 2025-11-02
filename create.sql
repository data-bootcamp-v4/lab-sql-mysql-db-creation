DROP DATABASE IF EXISTS lab_mysql;

CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
    vin INT PRIMARY KEY,
    manufacturer VARCHAR(45),
    model VARCHAR(45),
    year DATE,
    color VARCHAR(45)
);

CREATE TABLE salespersons (
    staff_id INT PRIMARY KEY,
    name VARCHAR(45),
    store VARCHAR(45)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(45),
    phone VARCHAR(20),
    email VARCHAR(45),
    address VARCHAR(45),
    city VARCHAR(45),
    state VARCHAR(45),
    country VARCHAR(45)
);

CREATE TABLE invoices (
    invoice_num INT PRIMARY KEY,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(vin),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id)
);



SHOW TABLES FROM `lab_mysql`;
