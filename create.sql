CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS sales_persons;


CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);


CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(100),
    cust_email VARCHAR(100),
    cust_address VARCHAR(100),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);


CREATE TABLE sales_persons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(50),
    name VARCHAR(50),
    store VARCHAR(100)
);


CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50),
    date VARCHAR(50),
    car INT,
    customer INT,
    sales_person INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (sales_person) REFERENCES sales_persons(id)
);

INSERT INTO users (id, name, email)
VALUES  (1, 'John Doe', 'johndoe@example.com'),
	    (2, 'Jane Smith', 'janesmith@example.com'),
	    (3, 'Bob Johnson', 'bobjohnson@example.com');