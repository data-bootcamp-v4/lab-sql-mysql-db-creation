-- create.sql
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop in FK-safe order
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- Cars
CREATE TABLE cars (
  id           INT AUTO_INCREMENT PRIMARY KEY,
  vin          VARCHAR(17) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model        VARCHAR(100) NOT NULL,
  model_year   YEAR NOT NULL,
  color        VARCHAR(30) NOT NULL
  -- Optionally enforce VIN uniqueness after cleaning:
  -- , UNIQUE KEY uk_cars_vin (vin)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Customers
CREATE TABLE customers (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  cust_id       INT NOT NULL,                -- business ID (not PK)
  cust_name     VARCHAR(100) NOT NULL,
  cust_phone    VARCHAR(30),
  cust_email    VARCHAR(100),
  cust_address  VARCHAR(150),
  cust_city     VARCHAR(100),
  cust_state    VARCHAR(100),
  cust_country  VARCHAR(100),
  cust_zipcode  VARCHAR(20),
  UNIQUE KEY uk_customers_cust_id (cust_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Salespersons
CREATE TABLE salespersons (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  staff_id INT NOT NULL,                     -- business ID (not PK)
  name     VARCHAR(100) NOT NULL,
  store    VARCHAR(100) NOT NULL,
  UNIQUE KEY uk_salespersons_staff_id (staff_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Invoices (car sale)
CREATE TABLE invoices (
  id             INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number BIGINT NOT NULL,
  invoice_date   DATE NOT NULL,
  car_id         INT NOT NULL,
  customer_id    INT NOT NULL,
  salesperson_id INT NOT NULL,
  UNIQUE KEY uk_invoice_number (invoice_number),
  -- Enforce 1 sale per car (optional but recommended):
  UNIQUE KEY uk_invoices_car_once (car_id),
  CONSTRAINT fk_inv_car         FOREIGN KEY (car_id)         REFERENCES cars(id)         ON DELETE RESTRICT,
  CONSTRAINT fk_inv_customer    FOREIGN KEY (customer_id)    REFERENCES customers(id)    ON DELETE RESTRICT,
  CONSTRAINT fk_inv_salesperson FOREIGN KEY (salesperson_id) REFERENCES salespersons(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
