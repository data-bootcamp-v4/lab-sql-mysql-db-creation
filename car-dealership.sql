CREATE DATABASE car_dealership;
USE car_dealership;

CREATE TABLE cars (
    id INT AUTO_INCREMENT UNIQUE,
    vin VARCHAR(20) PRIMARY KEY, -- vin is usually of 17 digits max
    manufacturer VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    year INT NOT NULL,
    colour VARCHAR(20)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT UNIQUE,
    customer_id INT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    phone_number VARCHAR(30),
    email VARCHAR(60),
    address VARCHAR(100),
    city VARCHAR(60),
    state_province VARCHAR(60),
    country VARCHAR(60),
    postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT UNIQUE,
    staff_id INT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    store VARCHAR(30) NOT NULL
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT UNIQUE,
    invoice_number INT PRIMARY KEY,
    date DATE NOT NULL,
    vin VARCHAR(17) NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL
);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_car -- foreign key name cannot match the column name
FOREIGN KEY (vin)
REFERENCES cars (vin);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_customer -- foreign key name cannot match the column name
FOREIGN KEY (customer_id)
REFERENCES customers (customer_id);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_salesperson -- foreign key name cannot match the column name
FOREIGN KEY (staff_id)
REFERENCES salespersons (staff_id);
