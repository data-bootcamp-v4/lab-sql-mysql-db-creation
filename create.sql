CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    VIN VARCHAR(30) UNIQUE NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    year BIGINT,
    color VARCHAR(30)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id BIGINT UNIQUE NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(50) NOT NULL,
    cust_address VARCHAR(100),
    cust_city VARCHAR(30),
    cust_state VARCHAR(30),
    cust_country VARCHAR(30),
    cust_zipcode VARCHAR(30)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id BIGINT UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(30)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number BIGINT UNIQUE NOT NULL,
    date DATETIME NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
	CONSTRAINT fk_car FOREIGN KEY (car) REFERENCES cars(id),
    CONSTRAINT fk_customer FOREIGN KEY (customer) REFERENCES customers(id),
    CONSTRAINT fk_salesperson FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);