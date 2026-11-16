CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
    id INT PRIMARY KEY,
    vin VARCHAR (20),
    fabricante TEXT,
    modelo VARCHAR (50),
    ano INT,
    cor TEXT
);

CREATE TABLE customers (
    id INT,
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

CREATE TABLE salespersons (
    id INT,
    staff_id VARCHAR(5) UNIQUE PRIMARY KEY,
    name VARCHAR(100),
    store TEXT
);

CREATE TABLE invoices (
    id INT,
    invoice_number INT PRIMARY KEY,
    date DATE,
    car INT,
    customer INT,
    salesperson VARCHAR(5),

    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(cust_id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(staff_id)
);





