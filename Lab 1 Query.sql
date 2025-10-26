-- =========================================
-- DATABASE CREATION
-- =========================================
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


-- =========================================
-- TABLE: CARS
-- =========================================
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50),
    year YEAR,
    price DECIMAL(10,2)
);


-- =========================================
-- TABLE: CUSTOMERS
-- =========================================
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);


-- =========================================
-- TABLE: SALES
-- =========================================
DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    customer_id INT,
    sale_date DATE,
    final_price DECIMAL(10,2),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- =========================================
-- DATABASE SEEDING (INITIAL DATA)
-- =========================================
USE lab_mysql;

-- Optional: Clear existing data before inserting new records
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE sales;
TRUNCATE TABLE customers;
TRUNCATE TABLE cars;
SET FOREIGN_KEY_CHECKS = 1;


-- =========================================
-- SEED: CARS
-- Source: Sample car data (manufacturer → brand, model → model, year → year)
-- Added sample prices
-- =========================================
INSERT INTO cars (car_id, brand, model, year, price) VALUES
(1, 'Volkswagen', 'Tiguan', 2019, 27000.00),
(2, 'Peugeot', 'Rifter', 2019, 22000.00),
(3, 'Ford', 'Fusion', 2018, 18000.00),
(4, 'Toyota', 'RAV4', 2018, 24000.00),
(5, 'Volvo', 'V60', 2019, 32000.00),
(6, 'Volvo', 'V60 Cross Country', 2019, 35000.00);


-- =========================================
-- SEED: CUSTOMERS
-- Source: Sample customer data
-- Split full name into first and last name
-- Emails unavailable → set as NULL (MySQL allows multiple NULLs in UNIQUE columns)
-- =========================================
INSERT INTO customers (customer_id, first_name, last_name, email, phone) VALUES
(1, 'Pablo', 'Picasso', NULL, '+34 636 17 63 82'),
(2, 'Abraham', 'Lincoln', NULL, '+1 305 907 7086'),
(3, 'Napoleon', 'Bonaparte', NULL, '+33 1 79 75 40 00');


-- =========================================
-- SEED: SALES
-- Source: Sample invoice data
-- Original data:
-- 1) date: 22-08-2018, car=1, customer=1
-- 2) date: 31-12-2018, car=3, customer=3
-- 3) date: 22-01-2019, car=2, customer=2
-- Converted to ISO format (YYYY-MM-DD)
-- Final prices slightly discounted from car prices
-- =========================================
INSERT INTO sales (sale_id, car_id, customer_id, sale_date, final_price) VALUES
(1, 1, 1, '2018-08-22', 26500.00),
(2, 3, 3, '2018-12-31', 17500.00),
(3, 2, 2, '2019-01-22', 21500.00);
