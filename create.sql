CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,         -- Auto-incrementing ID for the car
    vin VARCHAR(17) NOT NULL UNIQUE,               -- VIN (Primary Key alternative)
    manufacturer VARCHAR(100) NOT NULL,            -- Car manufacturer (e.g., Toyota, Ford)
    model VARCHAR(100) NOT NULL,                   -- Car model (e.g., Corolla, Mustang)
    year INT NOT NULL,                             -- Manufacturing year (e.g., 2022)
    color VARCHAR(50) NOT NULL                     -- Color of the car (e.g., Red, Blue)
);


DROP TABLE IF EXISTS cars;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,    -- Auto-incrementing ID for the customer
    name VARCHAR(255) NOT NULL,                     -- Customer's name
    phone_number VARCHAR(15) NOT NULL,              -- Customer's phone number
    email VARCHAR(255) NOT NULL UNIQUE,             -- Customer's email
    address VARCHAR(255) NOT NULL,                  -- Customer's address
    city VARCHAR(100) NOT NULL,                     -- Customer's city
    state VARCHAR(100) NOT NULL,                    -- Customer's state/province
    country VARCHAR(100) NOT NULL,                  -- Customer's country
    zip_code VARCHAR(20) NOT NULL                   -- Customer's zip/postal code
);

CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-incrementing ID for the salesperson
    name VARCHAR(255) NOT NULL,                     -- Salesperson's name
    store VARCHAR(100) NOT NULL                      -- Store/branch where the salesperson works
);

CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,      -- Auto-incrementing ID for the invoice
    invoice_date DATE NOT NULL,                      -- Date of the invoice
    car_id INT,                                      -- Foreign Key referencing the car sold
    customer_id INT,                                 -- Foreign Key referencing the customer
    salesperson_id INT,                              -- Foreign Key referencing the salesperson
    FOREIGN KEY (car_id) REFERENCES cars(car_id),    -- Linking car_id to cars table
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),  -- Linking customer_id to customers table
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id) -- Linking salesperson_id to salespersons table
);

ALTER TABLE cars MODIFY manufacturer VARCHAR(255) NULL;





