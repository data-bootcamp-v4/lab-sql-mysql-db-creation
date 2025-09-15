
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(20) NOT NULL,
  manufacturer VARCHAR(40) NOT NULL,
  model VARCHAR(40) NOT NULL,
  year INT NOT NULL,
  color VARCHAR(25)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESCRIBE cars;

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id VARCHAR(15) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  phone VARCHAR(30),
  email VARCHAR(250),
  address VARCHAR(120),
  city VARCHAR(60),
  state VARCHAR(60),
  country VARCHAR(60),
  zipcode VARCHAR(15)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESCRIBE customers;

CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(15) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESCRIBE salespersons;

CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number VARCHAR(20) NOT NULL UNIQUE,
  date DATE NOT NULL,
  car_id INT NOT NULL,
  customer_id INT NOT NULL,
  salesperson_id INT NOT NULL,
  FOREIGN KEY (car_id) REFERENCES cars(id),
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
  -- Si quieres forzar que un coche solo aparezca en una factura,
  -- después del seeding puedes añadir:  ALTER TABLE invoices ADD UNIQUE (car_id);
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESCRIBE invoices;
 SHOW TABLES;
