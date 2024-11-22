CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
	id_car INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year_date SMALLINT UNSIGNED NOT NULL,
    color VARCHAR(50)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT PRIMARY KEY NOT NULL,
    name_customer  VARCHAR(50),
    phone_number VARCHAR(50),
    email VARCHAR(50),
    color VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code INT
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE IF NOT EXISTS salespersons (
	staff_id INT PRIMARY KEY NOT NULL,
    name_staff VARCHAR(50),
    store VARCHAR(50)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
	invoice_id INT PRIMARY KEY NOT NULL,
    date_day DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (customer) REFERENCES customers(customer_id),
	FOREIGN KEY (salesperson) REFERENCES salespersons(staff_id),
    FOREIGN KEY (car) REFERENCES cars(id_car)
);
