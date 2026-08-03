CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_code VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(15)
);

CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    store VARCHAR(100) NOT NULL
);

CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    sale_price DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_invoices_car
        FOREIGN KEY (car_id)
        REFERENCES cars(car_id),

    CONSTRAINT fk_invoices_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_invoices_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES salespersons(salesperson_id)
);DESCRIBE cars;
DESCRIBE customers;
DESCRIBE salespersons;
DESCRIBE invoices;