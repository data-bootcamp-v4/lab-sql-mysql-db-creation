-- hallenge 2 - Create the Database and Tables
/*Open MySQL Workbench.

Create a new file named create.sql.

Create a MySQL database for this lab using SQL Query Script in MySQL Workbench. You can execute the following code:*/
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

/* Write SQL queries to create the tables and columns based on your database design. */
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_id INT PRIMARY KEY,
				VIN VARCHAR(50) NOT NULL,
                manufacturer VARCHAR(50) NOT NULL,
                model VARCHAR(50) NOT NULL,
                year INT NOT NULL,
                color VARCHAR(50));

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (staff_id INT PRIMARY KEY,
				name VARCHAR(50) NOT NULL,
                store VARCHAR(50) NOT NULL);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INT PRIMARY KEY,
				name VARCHAR(50),
                phone_number VARCHAR(50),
                email VARCHAR(50),
                adress VARCHAR(80),
                city VARCHAR(50),
                state VARCHAR(50),
                country VARCHAR(50),
                zip VARCHAR(50));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (invoice_id INT PRIMARY KEY,
				invoice_number INT,
                date VARCHAR(50),
                car_id INT,
                customer_id INT,
                staff_id INT);
SHOW TABLES;

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM invoices;
SELECT * FROM salespersons;

/* Defining relations between tables with the FOREIGN KEYS*/
ALTER TABLE invoices
ADD FOREIGN KEY (car_id) REFERENCES cars(car_id),
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
ADD FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id);

