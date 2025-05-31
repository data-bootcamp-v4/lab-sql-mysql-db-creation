-- 1) Creating the database structure and tables:

CREATE DATABASE car_dealer;
USE car_dealer;

DROP TABLE IF EXISTS customers
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNIQUE,
    name VARCHAR(100), 
    phone_number VARCHAR(20), 
    email VARCHAR(100),
    address VARCHAR(100), 
    city VARCHAR(100), 
    state VARCHAR(100), 
    country VARCHAR(100),
    zip_code VARCHAR(100)
);

DROP TABLE IF EXISTS cars
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT UNIQUE,
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year VARCHAR(100),
    color VARCHAR(100)
);

DROP TABLE IF EXISTS salespersons
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT UNIQUE,
    name VARCHAR(100),
    store VARCHAR(100)
);
 
 DROP TABLE IF EXISTS invoices
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT UNIQUE,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);

    

   
   