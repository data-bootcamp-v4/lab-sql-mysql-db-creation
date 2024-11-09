CREATE DATABASE IF NOT EXISTS lab_1;
USE lab_1;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
			auto_id INT AUTO_INCREMENT PRIMARY KEY, 
			vic VARCHAR (40) NOT NULL,
            manufacturer VARCHAR (20) NOT NULL,
            model VARCHAR (100) NOT NULL,
            year INT (4) NOT NULL,
            color VARCHAR (10) NOT NULL);
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
			customer_id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(50) NOT NULL,
            phone VARCHAR (15) NOT NULL,
            email VARCHAR (40),
            address VARCHAR (100),
            city VARCHAR (10),
            state VARCHAR(20),
            country VARCHAR (20) NOT NULL,
            zip_code VARCHAR(10) NOT NULL);
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
			staff_id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR (20) NOT NULL,
            store VARCHAR (50) NOT NULL);
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
			invoice_number VARCHAR (30) UNIQUE PRIMARY KEY,
			date DATE NOT NULL,
			auto_id INT NOT NULL,
			customer_id INT NOT NULL,
            staff_id INT NOT NULL,
            FOREIGN KEY (auto_id) REFERENCES cars (auto_id),
            FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
            FOREIGN KEY (staff_id) REFERENCES salespersons (staff_id));