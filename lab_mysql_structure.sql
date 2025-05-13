DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;
USE lab_mysql;

-- Primero eliminamos las tablas si existen (en orden correcto para evitar conflictos de claves foráneas)
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS salespersons;

-- Creamos la tabla customers
CREATE TABLE customers (
  customer_id INT PRIMARY KEY
);

-- Creamos la tabla cars (con vin más largo para evitar errores)
CREATE TABLE cars (
  vin VARCHAR(25) PRIMARY KEY
);

-- Creamos la tabla salespersons
CREATE TABLE salespersons (
  staff_id INT PRIMARY KEY
);

-- Creamos la tabla invoices con claves foráneas
CREATE TABLE invoices (
  invoice_number INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  car_id VARCHAR(25),
  salesperson_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (car_id) REFERENCES cars(vin),
  FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id)
);
