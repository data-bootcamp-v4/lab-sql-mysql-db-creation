CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT UNSIGNED NOT NULL PRIMARY KEY,
    cars_manufacture VARCHAR(45),
    cars_model VARCHAR(45),
	cars_year INT,
    cars_colour VARCHAR(45)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	cust_id INT UNSIGNED NOT NULL PRIMARY KEY,
    cust_name VARCHAR(45) NOT NULL,
    cust_phone INT,
    cust_email VARCHAR(45),
    cust_address VARCHAR(45) NOT NULL,
    cust_city VARCHAR(45) NOT NULL,
    cust_state_province VARCHAR(45),
    cust_country VARCHAR(45),
    cust_zip_postal_code VARCHAR(45) NOT NULL
);

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_ID INT NOT NULL,
    name VARCHAR(45) NOT NULL,
    store VARCHAR(45) NOT NULL
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id INT UNSIGNED NOT NULL auto_increment PRIMARY KEY,
	invoice_number VARCHAR(45) NOT NULL,
    number INT,
    date DATE NOT NULL,
    car_id INT UNSIGNED NOT NULL,
    customer_id INT UNSIGNED NOT NULL, 
    salesperson_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES cars(id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(cust_id),
    CONSTRAINT fk_salesperson_id FOREIGN KEY (salesperson_id) REFERENCES salesperson(id),
    constraint unique_invoice_number unique (invoice_number)
);

