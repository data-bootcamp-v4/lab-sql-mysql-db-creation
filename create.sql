CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year CHAR(4),
    color_inventory VARCHAR(50),
    PRIMARY KEY (car_id)
);

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    phone_number VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(50),
    PRIMARY KEY (customer_id)
);
CREATE TABLE invoice (
    invoice_id INT AUTO_INCREMENT,
    date DATE,
    car_id VARCHAR(50),
    customer_id VARCHAR(50),
    sales_person_id INT,
    PRIMARY KEY (invoice_id)
 );
 CREATE TABLE sales_person (
    sales_person_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    store VARCHAR(50),
    PRIMARY KEY (sales_person_id)
 );

