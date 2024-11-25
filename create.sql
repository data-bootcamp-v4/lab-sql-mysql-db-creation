-- Crea la base de datos lab_mysql1
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql; -- selecciona la base de datos creada
-- Crea las tablas cars, customers, salespersons e invoices, con sus columnas y los tipos de valor esperados en cada columna.
CREATE TABLE cars (vin VARCHAR(25) PRIMARY KEY NOT NULL, manufacturer VARCHAR(20), model VARCHAR(30) NOT NULL, year VARCHAR(10), color VARCHAR(15));
CREATE TABLE customers (customer_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50) NOT NULL, phone_num VARCHAR(25), email VARCHAR(20), address VARCHAR(100), city VARCHAR(20), state_prov VARCHAR(20), country VARCHAR(20), postal_code VARCHAR(8));
CREATE TABLE salespersons (staff_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50) NOT NULL, store VARCHAR(25));
CREATE TABLE invoices ( -- Se crea la tabla invoces, que tendrá las foreign keys para complementar las tabla.
	invoice_number INT PRIMARY KEY,
	inv_date VARCHAR (10), 
	vin VARCHAR(25),
	customer_id INT, 
	staff_id INT, 
	FOREIGN KEY (vin) REFERENCES cars(vin) , 
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id));