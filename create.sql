
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (id INT PRIMARY KEY,
					car_vin VARCHAR(30),
					manufacturer VARCHAR(50),
                    model VARCHAR(20),
                    _year INT,
                    color VARCHAR(20));
                    
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (id INT,
						customer_id INT PRIMARY KEY,
						customer_name VARCHAR(100),
                        phone_number VARCHAR(20),
                        email VARCHAR(100),
                        customer_address VARCHAR(150) DEFAULT "not provided",
                        city VARCHAR(20),
                        state_or_province VARCHAR(20),
                        country VARCHAR(50),
                        postal_code VARCHAR(10));
                        
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (id INT,
							staff_id INT PRIMARY KEY,
							staff_name VARCHAR(100),
                            staff_store VARCHAR(50));
                            
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (id INT,
						invoice_number INT PRIMARY KEY,
						invoice_date DATE,
                        car_id INT,
                        customer_id INT,
                        staff_id INT);
                        
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;