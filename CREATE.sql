CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS phone_numbers;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;


CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    customer_id VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE salespersons (
    id INT NOT NULL AUTO_INCREMENT,
    staff_id VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE cars (
    id INT NOT NULL AUTO_INCREMENT,
    vin VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year YEAR NOT NULL,
    colour VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE address (
    id INT NOT NULL AUTO_INCREMENT,
    street VARCHAR(150) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    customer_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE phone_numbers (
    id INT NOT NULL AUTO_INCREMENT,
    phone_number VARCHAR(20) NOT NULL,
    customer_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE invoices (
    id INT NOT NULL AUTO_INCREMENT,
    invoice_number INT NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (car_id) REFERENCES cars(id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    FOREIGN KEY (staff_id) REFERENCES salespersons(id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);
SHOW TABLES;
DESCRIBE customers;
DESCRIBE invoices;