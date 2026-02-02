CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
	id int AUTO_INCREMENT PRIMARY KEY,
	vin VARCHAR(17),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    car_year year,
    color_car VARCHAR(50)
);

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(50),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(40),
    zip VARCHAR(20)
);

CREATE TABLE salespersons (
	staff_id INT auto_increment PRIMARY KEY,
    staff_name VARCHAR(50),
    store_name VARCHAR(20)
);

CREATE TABLE invoices (
	invoice_number INT PRIMARY KEY,
    invoice_date DATE,
	id int,
    customer_id int,
    staff_id int,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (id) REFERENCES cars(id),
FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);

	
    
