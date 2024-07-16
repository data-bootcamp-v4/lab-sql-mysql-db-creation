CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY,
    vin VARCHAR(45) NOT NULL,
    manufacture VARCHAR(45),
    model VARCHAR(45),
    year INT,
    colour VARCHAR(45)
);

CREATE TABLE customers (
    id INT UNSIGNED NOT NULL PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    phone INT,
    email VARCHAR(45),
    address VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL,
    state_province VARCHAR(45),
    country VARCHAR(45),
    zip_postal_code VARCHAR(45) NOT NULL
);

CREATE TABLE salesperson (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_ID INT NOT NULL,
    name VARCHAR(45) NOT NULL,
    store VARCHAR(45) NOT NULL
);

CREATE TABLE invoices (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(45) NOT NULL,
    number INT,
    date DATE NOT NULL,
    car_id INT UNSIGNED NOT NULL,
    customer_id INT UNSIGNED NOT NULL, 
    salesperson_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES cars(id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(id),
    CONSTRAINT fk_salesperson_id FOREIGN KEY (salesperson_id) REFERENCES salesperson(id),
    CONSTRAINT unique_invoice_number UNIQUE (invoice_number)
);



