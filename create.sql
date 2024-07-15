CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT,
	VIN VARCHAR(40),
    manufacturer VARCHAR(40),
    model VARCHAR(40),
	`year` YEAR,
    color VARCHAR(40),
    PRIMARY KEY (VIN)
);


DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id INT,
	customer_id INT,
    `name` VARCHAR(40),
    phone_number VARCHAR(20),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    `state/province` VARCHAR(40),
    country VARCHAR(40),
    `zip/postal_code` INT,
    PRIMARY KEY (customer_id)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	id INT,
	staff_id VARCHAR(5),
    `name` VARCHAR(40),
    store VARCHAR(40),
    PRIMARY KEY (staff_id)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id INT,
	invoice_number INT,
    `date` DATE,
    VIN VARCHAR(40),
    customer_id INT,
    staff_id VARCHAR(5),
    PRIMARY KEY (invoice_number),
    FOREIGN KEY (VIN) REFERENCES cars(VIN),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);