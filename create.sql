
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE cars(
	car_pk INT AUTO_INCREMENT PRIMARY KEY,
    vin_number VARCHAR(17) UNIQUE NOT NULL,
    manufacturer VARCHAR(50),
    car_model VARCHAR(50),
    car_year YEAR,
    color VARCHAR(30));

CREATE TABLE customers(
	customer_pk INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50) UNIQUE NOT NULL,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postcode VARCHAR(20));

CREATE TABLE salesperson(
	salesperson_pk INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT UNIQUE NOT NULL,
    salesperson_name VARCHAR(50),
    store VARCHAR(50));

CREATE TABLE invoice(
	invoice_pk INT AUTO_INCREMENT PRIMARY KEY,
	invoice_number INT UNIQUE NOT NULL,
    vin_number VARCHAR(17),
    customer_id VARCHAR(50),
    staff_id INT,
    invoice_date DATE);

ALTER TABLE invoice
ADD CONSTRAINT fk_car
FOREIGN KEY (vin_number)
REFERENCES cars(vin_number);

ALTER TABLE invoice
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE invoice
ADD CONSTRAINT fk_salesperson
FOREIGN KEY (staff_id)
REFERENCES salesperson(staff_id);

