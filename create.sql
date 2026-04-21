CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vin INT PRIMARY KEY,
    color VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year int);
    
    DROP TABLE IF EXISTS customers;
    CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone_number VARCHAR(100),
    customer_address VARCHAR(100), 
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_postal_code INT,
    email VARCHAR(100) DEFAULT "not provided"
);
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons(
	Salespersons_id INT PRIMARY KEY,
    Salespersons_name VARCHAR(100),
    phone_number VARCHAR(100),
    store_division VARCHAR(100),
    email VARCHAR(100) DEFAULT "not provided"
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices(
	Invoice_number INT PRIMARY KEY,
    Salespersons_id INT,
    customer_id INT ,
    date VARCHAR(100),
    vin INT,
    CONSTRAINT fk_Salesperson FOREIGN KEY (Salespersons_id)
        REFERENCES Salespersons(Salespersons_id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
	CONSTRAINT fk_vin FOREIGN KEY (vin)
        REFERENCES cars(vin));
