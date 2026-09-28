CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS lab_mysql.invoices;
DROP TABLE IF EXISTS lab_mysql.cars;
DROP TABLE IF EXISTS lab_mysql.customers;
DROP TABLE IF EXISTS lab_mysql.sellers;

CREATE TABLE lab_mysql.cars  (
	cars_id INT AUTO_INCREMENT,
    vin VARCHAR(100),
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(50),
    PRIMARY KEY (cars_id)
);

DROP TABLE IF EXISTS lab_mysql.customers;
CREATE TABLE  lab_mysql.customers (
	customer_id INT AUTO_INCREMENT,
    cust_id VARCHAR(100),
    name VARCHAR(100),
    phone VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    zip_code VARCHAR(100),
    PRIMARY KEY (customer_id)
);

DROP TABLE IF EXISTS lab_mysql.sellers;
CREATE TABLE lab_mysql.sellers (
	sellers_id INT AUTO_INCREMENT,
    staff_id VARCHAR(100),
    name VARCHAR(100),
    store VARCHAR(100),
    PRIMARY KEY (sellers_id)    
);

DROP TABLE IF EXISTS lab_mysql.invoices;
CREATE TABLE lab_mysql.invoices (
	id INT AUTO_INCREMENT,
    invoice_number VARCHAR(100),
    date DATETIME,
    cars_id INT,
    customer_id INT,
    sellers_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (cars_id) REFERENCES lab_mysql.cars (cars_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES lab_mysql.customers (customer_id) ON DELETE CASCADE,
    FOREIGN KEY (sellers_id) REFERENCES lab_mysql.sellers (sellers_id) ON DELETE CASCADE
);