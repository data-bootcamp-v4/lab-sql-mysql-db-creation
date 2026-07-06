CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (car_id INT AUTO_INCREMENT PRIMARY KEY,
					vin VARCHAR(50),
					manufacturer VARCHAR(50),
                    model VARCHAR (50),
                    year INT,
                    color VARCHAR(50));

SELECT * FROM CARS;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (customer_auto_id INT AUTO_INCREMENT PRIMARY KEY,
						customer_id INT,
                        name VARCHAR(50),
                        phone_number VARCHAR(50),
                        email VARCHAR(50),
                        address VARCHAR(100),
                        city VARCHAR(50),
                        state_province VARCHAR(50),
                        country VARCHAR(50),
                        zip_code VARCHAR(50));
                        
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (salesperson_auto_id INT AUTO_INCREMENT PRIMARY KEY,
							staff_id INT,
							name VARCHAR(50),
							store VARCHAR(50));
                            
DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (invoice_id INT AUTO_INCREMENT PRIMARY KEY,
						invoice_number INT,
                        date DATE,
                        car_id INT,
                        customer_auto_id INT,
                        salesperson_auto_id INT);
                        
ALTER TABLE invoices
ADD CONSTRAINT fk_cars
FOREIGN KEY (car_id)
REFERENCES cars(car_id);

ALTER TABLE invoices
ADD CONSTRAINT fk_customers
FOREIGN KEY (customer_auto_id)
REFERENCES customers(customer_auto_id);

ALTER TABLE invoices
ADD CONSTRAINT fk_salespersons
FOREIGN KEY (salesperson_auto_id)
REFERENCES salespersons(salesperson_auto_id);

SELECT * FROM invoices