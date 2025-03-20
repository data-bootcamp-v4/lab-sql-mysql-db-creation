-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS ;

-- Use the database
USE CarSalesDB;

-- Create the 'cars' table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-increment ID for cars
    vin VARCHAR(17) NOT NULL UNIQUE,       -- Vehicle Identification Number
    manufacturer VARCHAR(50) NOT NULL,    -- Manufacturer of the car
    model VARCHAR(50) NOT NULL,           -- Model of the car
    year YEAR NOT NULL,                   -- Year of manufacture
    color VARCHAR(30) NOT NULL            -- Color of the car
);

-- Create the 'customers' table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-increment ID for customers
    name VARCHAR(100) NOT NULL,                 -- Customer's name
    phone_number VARCHAR(15) NOT NULL,          -- Customer's phone number
    email VARCHAR(100) NOT NULL UNIQUE,         -- Customer's email
    address VARCHAR(255) NOT NULL,              -- Customer's address
    city VARCHAR(50) NOT NULL,                  -- City
    state_province VARCHAR(50) NOT NULL,        -- State or province
    country VARCHAR(50) NOT NULL,               -- Country
    zip_postal_code VARCHAR(20) NOT NULL        -- ZIP or postal code
);

-- Create the 'salespersons' table
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-increment ID for salespersons
    name VARCHAR(100) NOT NULL,                    -- Salesperson's name
    store VARCHAR(100) NOT NULL                    -- Store where the salesperson works
);

-- Create the 'invoices' table
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto-increment ID for invoices
    invoice_date DATE NOT NULL,                -- Date of the invoice
    car_id INT NOT NULL,                       -- Foreign key referencing the car sold
    customer_id INT NOT NULL,                  -- Foreign key referencing the customer
    salesperson_id INT NOT NULL,               -- Foreign key referencing the salesperson
    FOREIGN KEY (car_id) REFERENCES cars(car_id) ON DELETE CASCADE, -- Relationship with 'cars'
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE, -- Relationship with 'customers'
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id) ON DELETE CASCADE -- Relationship with 'salespersons'
);