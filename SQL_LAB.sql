CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_code VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(15)
);

CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    store VARCHAR(100) NOT NULL
);

CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    sale_price DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_invoices_car
        FOREIGN KEY (car_id)
        REFERENCES cars(car_id),

    CONSTRAINT fk_invoices_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_invoices_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES salespersons(salesperson_id)
);DESCRIBE cars;
DESCRIBE customers;
DESCRIBE salespersons;
DESCRIBE invoices;

USE lab_mysql;

INSERT INTO cars
(vin, manufacturer, model, car_year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF5', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers
(customer_code, first_name, last_name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES
('10001', 'Pablo', 'Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham', 'Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoléon', 'Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons
(staff_id, first_name, last_name, store)
VALUES
('00001', 'Petey', 'Cruiser', 'Madrid'),
('00002', 'Anna', 'Sthesia', 'Barcelona'),
('00003', 'Paul', 'Molive', 'Berlin'),
('00004', 'Gail', 'Forcewind', 'Paris'),
('00005', 'Paige', 'Turner', 'Miami'),
('00006', 'Bob', 'Frapples', 'Mexico City'),
('00007', 'Walter', 'Melon', 'Amsterdam'),
('00008', 'Shonda', 'Leer', 'São Paulo');

INSERT INTO invoices
(invoice_number, invoice_date, car_id, customer_id, salesperson_id, sale_price)
VALUES
('852399038', '2018-08-22', 1, 1, 3, 25000.00),
('731166526', '2018-12-31', 3, 3, 5, 28000.00),
('271135104', '2019-01-22', 2, 2, 7, 27000.00);

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

