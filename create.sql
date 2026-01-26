CREATE DATABASE IF NOT EXISTS lab_mysql;
	
USE lab_mysql;

DROP TABLE IF EXISTS invoices;    
DROP TABLE IF EXISTS cars;
    
CREATE TABLE IF NOT EXISTS cars (
	vin VARCHAR(17) PRIMARY KEY,
	manufacturer VARCHAR(30),
	model VARCHAR(30),
	release_year INT,
	color ENUM('blanco', 'negro', 'rojo')
);

DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers (
	id_customer INT AUTO_INCREMENT PRIMARY KEY,
    name_customer VARCHAR(100),
    phone_number VARCHAR(13),
    email VARCHAR(40),
    address VARCHAR(100),
    city VARCHAR(40),
    state VARCHAR(30),
    country VARCHAR(30),
    zip VARCHAR(30)
);
    

DROP TABLE IF EXISTS salespersons;

CREATE TABLE IF NOT EXISTS salespersons (
	id_staff INT AUTO_INCREMENT PRIMARY KEY,
    name_staff VARCHAR(100),
    store VARCHAR (30)
);

CREATE TABLE IF NOT EXISTS invoices (
	id_invoice INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME,
    car VARCHAR(17),
    id_customer INT,
    id_staff INT,
    FOREIGN KEY (car) REFERENCES cars (vin) ON DELETE CASCADE,
    FOREIGN KEY (id_customer) REFERENCES customers (id_customer) ON DELETE CASCADE,
    FOREIGN KEY (id_staff) REFERENCES salespersons (id_staff) ON DELETE CASCADE
);
        