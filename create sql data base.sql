-- create.sql
-- Create and select the database for the car dealership lab
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop tables in reverse dependency order to avoid FK conflicts
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Table: cars
-- Stores every vehicle in the dealership inventory
CREATE TABLE cars (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    vin           VARCHAR(17) NOT NULL UNIQUE,
    manufacturer  VARCHAR(50) NOT NULL,
    model         VARCHAR(50) NOT NULL,
    year          YEAR        NOT NULL,
    color         VARCHAR(30) NOT NULL
);

-- Table: customers
-- Stores customer contact details; cust_id is the business ID (not the PK)
CREATE TABLE customers (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    cust_id       VARCHAR(20) NOT NULL UNIQUE,
    cust_name     VARCHAR(100) NOT NULL,
    cust_phone    VARCHAR(30),
    cust_email    VARCHAR(100),
    cust_address  VARCHAR(200),
    cust_city     VARCHAR(60),
    cust_state    VARCHAR(60),
    cust_country  VARCHAR(60),
    cust_zipcode  VARCHAR(20)
);

-- Table: salespersons
-- Stores sales staff; staff_id is the business ID (not the PK)
CREATE TABLE salespersons (
    id        INT AUTO_INCREMENT PRIMARY KEY,
    staff_id  VARCHAR(20) NOT NULL UNIQUE,
    name      VARCHAR(100) NOT NULL,
    store     VARCHAR(60)  NOT NULL
);

-- Table: invoices
-- Links a car, a customer and a salesperson for each sale
CREATE TABLE invoices (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number  VARCHAR(30) NOT NULL UNIQUE,
    date            DATE        NOT NULL,
    car_id          INT         NOT NULL,
    customer_id     INT         NOT NULL,
    salesperson_id  INT         NOT NULL,
    CONSTRAINT fk_invoice_car
        FOREIGN KEY (car_id) REFERENCES cars(id),
    CONSTRAINT fk_invoice_customer
        FOREIGN KEY (customer_id) REFERENCES customers(id),
    CONSTRAINT fk_invoice_salesperson
        FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);