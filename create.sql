CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (vin VARCHAR (255), manufacturer VARCHAR (255), model VARCHAR (255), year INT, color VARCHAR(255), PRIMARY KEY (vin));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id VARCHAR (255), name VARCHAR (255), phone_number VARCHAR (255), email VARCHAR (255), address VARCHAR (255), city VARCHAR (255), state_province VARCHAR (255), country VARCHAR (255), zip_postal_code VARCHAR (255), PRIMARY KEY (customer_id));
/*
CREATE TRIGGER before_insert_customer
BEFORE INSERT ON customers FOR EACH ROW
BEGIN
    SET NEW.customer_id = CONCAT(NEW.prefix_id, LPAD(NEW.number_id, 10, '0'));  -- Optional: Pad number_id for consistent format
*/

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (staff_id VARCHAR (255), name VARCHAR (255), store VARCHAR (255), PRIMARY KEY (staff_id));
/*
CREATE TRIGGER before_insert_salesperson
BEFORE INSERT ON salespersons FOR EACH ROW
#BEGIN
#    SET NEW.staff_id = CONCAT(NEW.prefix_id, LPAD(NEW.number_id, 10, '0'));  -- Optional: Pad number_id for consistent format
*/

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (invoice_number VARCHAR (255), date DATETIME, vin VARCHAR (255), customer_id VARCHAR (255), staff_id VARCHAR (255), PRIMARY KEY (invoice_number), FOREIGN KEY (vin) REFERENCES cars (vin), FOREIGN KEY (customer_id) REFERENCES customers (customer_id), FOREIGN KEY (staff_id) REFERENCES salespersons (staff_id));

