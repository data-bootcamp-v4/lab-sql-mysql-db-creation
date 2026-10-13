CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(30) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(80),
    cust_state VARCHAR(80),
    cust_country VARCHAR(80),
    cust_zipcode VARCHAR(20)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    staff_name VARCHAR(100) NOT NULL,
    staff_phone VARCHAR(30),
    staff_email VARCHAR(100)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
SHOW TABLES;
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ7EPB6H6', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');
INSERT INTO customers
(cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
(10001, 'Pablo Picasso', '+34 600 111 222', NULL, 'Calle Mayor 12', 'Madrid', 'Madrid', 'Spain', '28001'),
(20001, 'Abraham Lincoln', '+34 600 222 333', NULL, 'Avenida Central 25', 'Barcelona', 'Barcelona', 'Spain', '08001'),
(30001, 'Napoleón Bonaparte', '+34 600 333 444', NULL, 'Plaza España 8', 'Valencia', 'Valencia', 'Spain', '46001');
INSERT INTO salespersons (staff_id, staff_name, staff_phone, staff_email)
VALUES
('00001', 'Petey Cruiser', '900-111-111', 'petey@example.com'),
('00002', 'Anna Sthesia', '900-222-222', 'anna@example.com'),
('00003', 'Paul Molive', '900-333-333', 'paul@example.com'),
('00004', 'Anna Mull', '900-444-444', 'anna.mull@example.com'),
('00005', 'Matt Ovid', '900-555-555', 'matt@example.com'),
('00006', 'Gail Forcewind', '900-666-666', 'gail@example.com'),
('00007', 'Paige Turner', '900-777-777', 'paige@example.com');
INSERT INTO invoices
(invoice_number, invoice_date, car_id, customer_id, salesperson_id)
VALUES
('10001', '2020-01-01', 1, 1, 3),
('10002', '2020-02-01', 3, 3, 5),
('10003', '2020-03-01', 2, 2, 7);
SELECT * FROM invoices;
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT
    i.invoice_number,
    i.invoice_date,
    c.manufacturer,
    c.model,
    cu.cust_name AS customer,
    s.staff_name AS salesperson
FROM invoices i
JOIN cars c ON i.car_id = c.id
JOIN customers cu ON i.customer_id = cu.id
JOIN salespersons s ON i.salesperson_id = s.id;
SELECT
    i.invoice_number,
    c.manufacturer,
    c.model,
    cu.cust_name AS customer
FROM invoices i
JOIN cars c ON i.car_id = c.id
JOIN customers cu ON i.customer_id = cu.id
ORDER BY i.invoice_number;
SHOW TABLES;