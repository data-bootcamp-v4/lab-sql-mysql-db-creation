CREATE DATABASE IF NOT EXISTS lab_mysql;
	
USE lab_mysql;

DROP TABLE IF EXISTS cars;
#CREATE THE COLUMNS FOR CARS
CREATE TABLE IF NOT EXISTS cars (
	id INT NOT NULL,
    vin VARCHAR(100) NOT NULL,
	manufacturer VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	year YEAR NOT NULL,
	color VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS customers;
#CREATE THE COLUMNS FOR CUSTOMERS
CREATE TABLE IF NOT EXISTS customers (
	id INT NOT NULL,
	customer_id INT,
	name VARCHAR(100) NOT NULL,
	phone_number VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	address VARCHAR(100) NOT NULL,
	city VARCHAR(100) NOT NULL,
	state_province VARCHAR(100) NOT NULL,
	country VARCHAR(100) NOT NULL,
	zip_postal_code INT NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS staff;
#CREATE THE COLUMNS FOR CUSTOMERS
CREATE TABLE IF NOT EXISTS staff (
	id INT NOT NULL,
	staff_id INT,
	name VARCHAR(100) NOT NULL,
	store VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS invoices;
#CREATE THE COLUMNS FOR CUSTOMERS
CREATE TABLE IF NOT EXISTS invoices (
	id INT NOT NULL,
	invoice_id INT,
    invoice_date DATETIME,
    staff INT,
    customer INT,
    car INT,
    PRIMARY KEY (invoice_id),
    foreign key (staff) REFERENCES staff(id),
	foreign key (customer) REFERENCES customers(id),
    foreign key (car) REFERENCES cars(id)
);