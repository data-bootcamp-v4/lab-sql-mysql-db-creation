CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cust_id INT UNSIGNED NOT NULL,
    cust_name VARCHAR(50) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(50),
    cust_address VARCHAR(100) NOT NULL,
    cust_zipcode INT UNSIGNED NOT NULL,
    CONSTRAINT unique_cust_id UNIQUE (cust_id)
);


DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT UNSIGNED NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT UNSIGNED NOT NULL,
    customer_id INT UNSIGNED NOT NULL,
    salesperson_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

