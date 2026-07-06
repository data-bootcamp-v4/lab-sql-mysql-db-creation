CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS car_table;

CREATE TABLE car_table (id INT AUTO_INCREMENT PRIMARY KEY, 
		VIN VARCHAR(17),
        manufacturer VARCHAR(50),
        model VARCHAR(50) , 
        year INT,
        color VARCHAR(50));

SELECT * FROM car_table;

DROP TABLE IF EXISTS customers_table;

CREATE TABLE customers_table (id INT AUTO_INCREMENT PRIMARY KEY, 
		customer_id INT, 
        name VARCHAR(255), 
        phone_number VARCHAR(20), 
        email VARCHAR(100), 
        address VARCHAR(255), 
        city VARCHAR(100), 
        state VARCHAR(100), 
        country VARCHAR(100),
        zipcode VARCHAR(20));
        
SELECT * FROM customers_table;

DROP TABLE IF EXISTS salespersons_table;

CREATE TABLE salespersons_table (id INT AUTO_INCREMENT PRIMARY KEY, 
		staff_id INT, 
        name VARCHAR(255), 
        store_id INT, 
        store_name VARCHAR(50));
        
SELECT * FROM salespersons_table;
     
DROP TABLE IF EXISTS invoices_table;

CREATE TABLE invoices_table (id INT AUTO_INCREMENT PRIMARY KEY, 
		VIN VARCHAR(17),
        invoice_number INT, 
        date DATE, 
        customer_id INT,
        staff_id INT);
        
SELECT * FROM invoices_table;


