-- Switch to the seeding_sql database
USE lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
-- Drop tables in correct order (to avoid foreign key conflicts)
-- 1) cars table
DROP TABLE  CARS;
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(30) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

-- 2) customers table
DROP TABLE customers;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_code VARCHAR(20) NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zip VARCHAR(20)
);

-- 3) salespersons table
DROP TABLE salespersons;
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_code VARCHAR(20) NOT NULL,
    staff_name VARCHAR(100) NOT NULL,
    store_location VARCHAR(100)
);

-- 4) invoices table
DROP TABLE invoices;
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    invoice_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id)        REFERENCES cars(car_id),
    FOREIGN KEY (customer_id)   REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id)REFERENCES salespersons(salesperson_id)
);

SHOW TABLES;
