CREATE DATABASE IF NOT EXISTS lab_msql;
USE lab_msql;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
	vin VARCHAR(50) NOT NULL UNIQUE,
	manufacturer VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	year INT NOT NULL,
	color VARCHAR(50)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_code VARCHAR(50),
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_code VARCHAR(50),
    name VARCHAR(255) NOT NULL,
    store VARCHAR(100)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

ALTER TABLE invoices
ADD FOREIGN KEY (car_id) REFERENCES cars(car_id);

ALTER TABLE invoices
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE invoices
ADD FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id);

SELECT
    i.invoice_id,
    i.invoice_date,
    c.name AS customer,
    ca.model AS car,
    s.name AS salesperson
FROM invoices i
JOIN customers c ON i.customer_id = c.customer_id
JOIN cars ca ON i.car_id = ca.car_id
JOIN salespersons s ON i.salesperson_id = s.salesperson_id;

