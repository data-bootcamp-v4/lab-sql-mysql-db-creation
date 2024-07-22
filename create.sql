-- Active: 1721290977041@@127.0.0.1@3306
CREATE DATABASE dealership;

USE dealership;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    VIN VARCHAR (20),
    manufacturer VARCHAR(50),
    model VARCHAR(30),
    year_cars INT,
    colour VARCHAR(20),
    car_id INT
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_ID INT,
    nombre VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(50),
    address_cus VARCHAR(100),
    city VARCHAR(30),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(10)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    staff_ID INT,
    nombre VARCHAR(20),
    store VARCHAR(30)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    invoice_number INT,
    date_inv DATE,
    car_id INT,
    customer_id INT,
    staff_ID INT
);

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
