
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);
DESCRIBE cars;


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(25),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(15)
);

DESCRIBE customers;

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id VARCHAR(50) NOT NULL UNIQUE,
name VARCHAR(50) NOT NULL,
store VARCHAR(100) NOT NULL
);

DESCRIBE salespersons;

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number VARCHAR(20) NOT NULL,
date DATE NOT NULL,
car INT,
customer INT,
salesperson INT,

FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);

DESCRIBE invoices;

SHOW CREATE TABLE invoices;

USE lab_mysql;

SHOW TABLES;



