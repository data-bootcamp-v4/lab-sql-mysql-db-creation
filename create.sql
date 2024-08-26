CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    car_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color TEXT
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city TEXT,
    state_province TEXT,
    country TEXT,
    zip_postal_code VARCHAR(20)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    salesperson_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    staff_ID VARCHAR(50),
    name TEXT,
    store VARCHAR(100)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    salesperson_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    staff_ID VARCHAR(50),
    name TEXT,
    store VARCHAR(100)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    invoice_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50),
    date DATE,
    car BIGINT,
    customer BIGINT,
    salesperson_to_car_sale BIGINT,
    FOREIGN KEY (car) REFERENCES cars(car_id),
    FOREIGN KEY (customer) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_to_car_sale) REFERENCES salespersons(salesperson_id)
);


