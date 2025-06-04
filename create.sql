CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
	id INT AUTO_INCREMENT UNIQUE KEY,
    vin VARCHAR(40) PRIMARY KEY,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(45)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    id INT AUTO_INCREMENT UNIQUE KEY,
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(45) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(20),
    cust_address VARCHAR(45),
    cust_city VARCHAR(45),
    cust_state VARCHAR(45),
    cust_count VARCHAR(45),
    cust_zipcode INT
);

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
	id INT AUTO_INCREMENT UNIQUE KEY,
    staff_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    store VARCHAR(45) NOT NULL
);


DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
	id INT AUTO_INCREMENT UNIQUE KEY,
    invoice_number INT PRIMARY KEY,
    date DATE NOT NULL,
    vin VARCHAR(40) ,
    cust_id INT NOT NULL,
    staff_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (vin) REFERENCES Cars(vin),
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id),
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id)
);


