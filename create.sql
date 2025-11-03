DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;
USE lab_mysql;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  customer_id   INT AUTO_INCREMENT PRIMARY KEY,
  cust_code     INT NOT NULL UNIQUE,
  cust_name     VARCHAR(100) NOT NULL,
  cust_phone    VARCHAR(25),
  cust_email    VARCHAR(120) UNIQUE,
  cust_address  VARCHAR(120),
  cust_city     VARCHAR(60),
  cust_state    VARCHAR(60),
  cust_country  VARCHAR(60),
  cust_zipcode  VARCHAR(15)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
  salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
  staff_code     CHAR(5) NOT NULL UNIQUE,
  name           VARCHAR(100) NOT NULL,
  store          VARCHAR(60) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  car_id       INT AUTO_INCREMENT PRIMARY KEY,
  vin          VARCHAR(20) NOT NULL UNIQUE,
  manufacturer VARCHAR(50) NOT NULL,
  model        VARCHAR(60) NOT NULL,
  year         SMALLINT NOT NULL,
  color        VARCHAR(30) NOT NULL,
  status       ENUM('in_stock','sold') DEFAULT 'in_stock',
  CONSTRAINT chk_cars_year CHECK (year BETWEEN 1886 AND 2100)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
  invoice_id      INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number  VARCHAR(20) NOT NULL UNIQUE,
  invoice_date    DATE NOT NULL,
  car_id          INT NOT NULL,
  customer_id     INT NOT NULL,
  salesperson_id  INT NOT NULL,
  CONSTRAINT fk_invoices_car
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_invoices_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_invoices_salesperson
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  UNIQUE KEY uk_invoices_car (car_id),
  CONSTRAINT chk_invoice_date CHECK (invoice_date >= '2000-01-01')
) ENGINE=InnoDB;

CREATE INDEX idx_invoices_customer ON invoices(customer_id);
CREATE INDEX idx_invoices_salesperson ON invoices(salesperson_id);