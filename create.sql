CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    id INT AUTO_INCREMENT,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    color VARCHAR(30),

    PRIMARY KEY (id),
    UNIQUE (vin)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT,
    customer_id VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(30),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20),

    PRIMARY KEY (id),
    UNIQUE (customer_id)
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT,
    staff_id VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL,

    PRIMARY KEY (id),
    UNIQUE (staff_id)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT,
    invoice_number VARCHAR(20) NOT NULL,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,

    PRIMARY KEY (id),
    UNIQUE (invoice_number),
    UNIQUE (car_id),

    CONSTRAINT fk_invoices_car
        FOREIGN KEY (car_id) REFERENCES cars(id),

    CONSTRAINT fk_invoices_customer
        FOREIGN KEY (customer_id) REFERENCES customers(id),

    CONSTRAINT fk_invoices_salesperson
        FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);