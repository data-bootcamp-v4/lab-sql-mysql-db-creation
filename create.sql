CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(30) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    model VARCHAR(20) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(255) NOT NULL,
    cust_city VARCHAR(100) NOT NULL,
    cust_state VARCHAR(100) NOT NULL,
    cust_country VARCHAR(100) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL,
    CONSTRAINT UniqueConstraintName UNIQUE (staff_id)
);

DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL , 
    date date NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    FOREIGN KEY (car) REFERENCES cars (id),
    FOREIGN KEY (customer) REFERENCES customers (id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id) 
);