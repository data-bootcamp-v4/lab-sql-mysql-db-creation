CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars ( 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	vin VARCHAR(20) NOT NULL, 
	fabricante VARCHAR(50) NOT NULL,
 	model VARCHAR(50) NOT NULL, 
	car_year YEAR NOT NULL, 
	color VARCHAR(20) NOT NULL
	);
 
 DROP TABLE IF EXISTS customers;
 
 CREATE TABLE customers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cust_id INT NOT NULL, 
	cust_name VARCHAR(50) NOT NULL, 
	cust_phone VARCHAR(50),
 	cust_email VARCHAR(50), 
	cust_address VARCHAR(50) NOT NULL, 
	cust_city VARCHAR(50), 
 	cust_state VARCHAR(50), 
	cust_country VARCHAR(50), 
	cust_zipcode INT UNSIGNED NOT NULL,
    CONSTRAINT unique_cust_id UNIQUE (cust_id)
	);
 
 DROP TABLE IF EXISTS salespersons;
 
 CREATE TABLE salespersons (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	staff_id INT NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	store VARCHAR(50) NOT NULL,
    CONSTRAINT unique_staff_id UNIQUE (staff_id)
	);
 
 DROP TABLE IF EXISTS invoices;
 
 CREATE TABLE invoices (
	invoice_number VARCHAR(20) NOT NULL, 
	date_inv DATE NOT NULL, 
	id_cars INT UNSIGNED NOT NULL, 
	id_cust INT UNSIGNED NOT NULL,  
	id_sales INT UNSIGNED NOT NULL,
 	CONSTRAINT fk_car_id FOREIGN KEY (id_cars) REFERENCES cars(id),
 	CONSTRAINT fk_customer_id FOREIGN KEY (id_cust) REFERENCES customers(id),
    CONSTRAINT fk_salesperson_id FOREIGN KEY (id_sales) REFERENCES salespersons(id),
    CONSTRAINT unique_invoice_number UNIQUE (invoice_number)
 	);
 
 
 
 