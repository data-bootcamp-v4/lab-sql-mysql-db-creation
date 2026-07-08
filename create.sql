-- =========================================
-- Challenge 2 - Create the Database and Tables
-- =========================================

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- ---------- CARS ----------
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    vin          VARCHAR(17)  NOT NULL,
    manufacturer VARCHAR(50)  NOT NULL,
    model        VARCHAR(50)  NOT NULL,
    year         INT          NOT NULL,
    color        VARCHAR(30)  NOT NULL
);

-- ---------- CUSTOMERS ----------
CREATE TABLE customers (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT          NOT NULL,
    name        VARCHAR(100) NOT NULL,
    phone       VARCHAR(30),
    email       VARCHAR(100),
    address     VARCHAR(150),
    city        VARCHAR(50),
    state       VARCHAR(50),
    country     VARCHAR(50),
    zipcode     VARCHAR(15)
);

-- ---------- SALESPERSONS ----------
CREATE TABLE salespersons (
    id       INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT          NOT NULL,
    name     VARCHAR(100) NOT NULL,
    store    VARCHAR(50)  NOT NULL
);

-- ---------- INVOICES ----------
CREATE TABLE invoices (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(30) NOT NULL,
    date           DATE        NOT NULL,
    car_id         INT         NOT NULL,
    customer_id    INT         NOT NULL,
    salesperson_id INT         NOT NULL,
    FOREIGN KEY (car_id)         REFERENCES cars(id),
    FOREIGN KEY (customer_id)    REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
