CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- 1. CARS
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

-- 2. CUSTOMERS
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- 3. SALESPERSONS
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	store VARCHAR(50)
);

-- 4. INVOICES (The central hub)
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    date DATE,
    car_id INT, -- This links to cars.id
    customer_id INT, -- This links to customers.id
    salesperson_id INT, -- This links to salespersons.id
    -- Adding Foreign Keys ensures data integrity
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);