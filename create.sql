DROP DATABASE IF EXISTS lab_mysql;

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (car_id),
                   vin VARCHAR(20),
				   manufacturer VARCHAR(20),
                   model VARCHAR(20),
                   year INT,
                   color VARCHAR(20));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (customer_id),
                        cust_number VARCHAR(20),
				        name VARCHAR(20),
                        phone_number VARCHAR(20),
                        email VARCHAR(40),
                        address VARCHAR(40),
                        city VARCHAR(20),
                        state VARCHAR(20),
                        country VARCHAR(20),
                        zip_code VARCHAR(20));

DROP TABLE IF EXISTS sales_persons;
CREATE TABLE sales_persons (sp_id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (sp_id),
                            staff_id VARCHAR(20),
							name VARCHAR(20),
					        store VARCHAR(20));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (id),
                       invoice_id VARCHAR(20),
					   date DATE,
					   car_id INT,
                       customer_id INT,
                       sp_id INT);
                        