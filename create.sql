CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
-- dropping dependent table first
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
	Car_PK INT AUTO_INCREMENT PRIMARY KEY,
	VIN VARCHAR(40) UNIQUE,
	Manufacturer VARCHAR(40),
	Model VARCHAR(40),
	Year INT,
	Color VARCHAR(40)
);


CREATE TABLE customers (
	Customer_PK INT AUTO_INCREMENT PRIMARY KEY,
	Customer_ID VARCHAR(40),
	`Name` VARCHAR(40),
	Phone_number VARCHAR(40),
	Email VARCHAR(40),
	Address VARCHAR(40),
	City VARCHAR(40),
	State VARCHAR(40),
	Country VARCHAR(40),
	Zip_code VARCHAR(40)
);


CREATE TABLE salespersons (
	Staff_PK INT AUTO_INCREMENT PRIMARY KEY,
	Staff_ID VARCHAR(40),
	`Name` VARCHAR(40),
	Company_store VARCHAR(40)
);


CREATE TABLE invoices (
	Invoice_PK INT AUTO_INCREMENT PRIMARY KEY,
	Invoice_number VARCHAR(40),
	Date DATE,
	Car_PK INT,
	Customer_PK INT,
	Staff_PK INT,
    
	FOREIGN KEY (Car_PK) REFERENCES cars(Car_PK),
    FOREIGN KEY (Customer_PK) REFERENCES customers(Customer_PK),
	FOREIGN KEY (Staff_PK) REFERENCES salespersons(Staff_PK)
);

SELECT *
FROM cars