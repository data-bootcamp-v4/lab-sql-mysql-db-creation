CREATE DATABASE IF NOT EXISTS lab_sql_mysql_db_creation;
USE lab_sql_mysql_db_creation;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    vin CHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(50) DEFAULT NULL,
    model VARCHAR(100) DEFAULT NULL,
    year INT,
    color ENUM('negro', 'blanco', 'gris', 'azul', 'rojo', 'verde', 'amarillo'),
    CONSTRAINT chk_year CHECK (year > 1990)
);


CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(25),
    province VARCHAR(25),
    country VARCHAR(25),
    postal_code VARCHAR(15)
);


CREATE TABLE salesperson (
    salesperson_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    store VARCHAR(50)
);

CREATE TABLE invoices (
    invoice_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_date DATE NOT NULL,
    vin CHAR(17),
    customer_id INT,
    salesperson_id INT,
    CONSTRAINT fk_invoices_cars FOREIGN KEY (vin) REFERENCES cars(vin),
    CONSTRAINT fk_invoices_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_invoices_salesperson FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);
