-- create.sql — Challenge 2
CREATE DATABASE IF NOT EXISTS lab_mysql
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE lab_mysql;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;
SET FOREIGN_KEY_CHECKS = 1;

-- Cars
CREATE TABLE cars (
  id           INT AUTO_INCREMENT PRIMARY KEY,
  vin          VARCHAR(32)  NOT NULL,
  manufacturer VARCHAR(100) NOT NULL,
  model        VARCHAR(100) NOT NULL,
  `year`       SMALLINT     NOT NULL,
  color        VARCHAR(50)
) ENGINE=InnoDB;


-- Customers
CREATE TABLE customers (
  id           INT AUTO_INCREMENT PRIMARY KEY,
  cust_id      VARCHAR(20)   NOT NULL,
  cust_name    VARCHAR(150)  NOT NULL,
  cust_phone   VARCHAR(50),
  cust_email   VARCHAR(150),
  cust_address VARCHAR(200),
  cust_city    VARCHAR(100),
  cust_state   VARCHAR(100),
  cust_country VARCHAR(100),
  cust_zipcode VARCHAR(20),
  UNIQUE KEY uq_customers_cust_id (cust_id),
  UNIQUE KEY uq_customers_email (cust_email)
) ENGINE=InnoDB;

-- Salespersons 
CREATE TABLE salespersons (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(20)  NOT NULL,
  name     VARCHAR(150) NOT NULL,
  store    VARCHAR(100),
  UNIQUE KEY uq_salespersons_staff_id (staff_id)
) ENGINE=InnoDB;

-- Invoices 
CREATE TABLE invoices (
  id              INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number  VARCHAR(30) NOT NULL,
  `date`          DATE        NOT NULL,
  car_id          INT         NOT NULL,
  customer_id     INT         NOT NULL,
  salesperson_id  INT         NOT NULL,

  UNIQUE KEY uq_invoices_invoice_number (invoice_number),

  KEY idx_invoices_car_id        (car_id),
  KEY idx_invoices_customer_id   (customer_id),
  KEY idx_invoices_salesperson_id(salesperson_id),

  CONSTRAINT fk_invoices_car
    FOREIGN KEY (car_id) REFERENCES cars(id)
    ON UPDATE CASCADE ON DELETE RESTRICT,

  CONSTRAINT fk_invoices_customer
    FOREIGN KEY (customer_id) REFERENCES customers(id)
    ON UPDATE CASCADE ON DELETE RESTRICT,

  CONSTRAINT fk_invoices_salesperson
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;
