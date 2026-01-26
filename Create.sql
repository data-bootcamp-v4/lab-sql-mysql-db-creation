CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE lab_mysql.cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL, 
    model VARCHAR(50) NOT NULL, 
    year INT NOT NULL,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE lab_mysql.customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL, 
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_addres VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50), 
    cust_country VARCHAR(50), 
    cust_zipcode VARCHAR(15)
);

CREATE TABLE lab_mysql.salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

CREATE TABLE lab_mysql.invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL UNIQUE,
    date DATE NOT NULL,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);

    