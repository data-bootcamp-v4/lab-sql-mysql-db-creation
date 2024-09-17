CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
CREATE TABLE customers (
    id INT,
    name VARCHAR(50),
    email VARCHAR(50),
    PHONE INT,
    city VARCHAR(50),
    zipcode INT
);

CREATE TABLE cars (
    vin INT,
    model VARCHAR(50),
    manufacturer VARCHAR(50),
    year DATE,
    colour VARCHAR(50)
);

CREATE TABLE sales_persons (
    id INT,
    name VARCHAR(50),
    store VARCHAR(50)
);

CREATE TABLE invoices (
    id INT,
    date DATE,
    car VARCHAR(50),
    customer_id INT,
    sales_id INT
);
