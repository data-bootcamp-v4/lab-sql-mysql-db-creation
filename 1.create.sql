CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

## Creating tables
# Just in case :)#
#DROP TABLE IF EXISTS invoices;
#DROP TABLE IF EXISTS salesperson;
#DROP TABLE IF EXISTS customers;
#DROP TABLE IF EXISTS cars;

-- CARS
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    vin VARCHAR(255),
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year INT,
    color VARCHAR(255),
    PRIMARY KEY (id)
);

-- CUSTOMERS
CREATE TABLE customers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cust_id INT,
    cust_name VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    zipcode VARCHAR(255),
    PRIMARY KEY (id)
);

-- SALESPERSON
CREATE TABLE salesperson (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    staff_id INT,
    name VARCHAR(255),
    store VARCHAR(255),
    PRIMARY KEY (id)
);

-- INVOICES
CREATE TABLE invoices (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    invoice_number INT,
    date DATE,
    car_id INT UNSIGNED,
    customer_id INT UNSIGNED,
    salesperson_id INT UNSIGNED,
    PRIMARY KEY (id),
    CONSTRAINT fk_cars_id_invoices
        FOREIGN KEY (car_id) REFERENCES cars(id),
    CONSTRAINT fk_customers_id_invoices
        FOREIGN KEY (customer_id) REFERENCES customers(id),
    CONSTRAINT fk_salesperson_id_invoices
        FOREIGN KEY (salesperson_id) REFERENCES salesperson(id)
);