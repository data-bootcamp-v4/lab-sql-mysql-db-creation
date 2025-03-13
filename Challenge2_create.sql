-- create.sql

-- Drop tables if they exist (for easy re-creation)
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Create the 'cars' table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(255) UNIQUE NOT NULL,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year INT,
    color VARCHAR(255)
);

-- Create the 'customers' table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT UNIQUE NOT NULL,
    cust_name VARCHAR(255),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(255),
    cust_address VARCHAR(255),
    cust_city VARCHAR(255),
    cust_state VARCHAR(255),
    cust_country VARCHAR(255),
    cust_zipcode VARCHAR(10)
);

-- Create the 'salespersons' table
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT UNIQUE NOT NULL,
    name VARCHAR(255),
    store VARCHAR(255)
);

-- Create the 'invoices' table
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT UNIQUE NOT NULL,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);
