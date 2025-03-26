
# 3
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


# 4

CREATE TABLE cars (id CHAR(1),
				   vin VARCHAR(20),
				   manufacturer VARCHAR(20),
                   model VARCHAR(20),
                   year CHAR(4),
                   color VARCHAR(20));
                   
CREATE TABLE invoices (id CHAR(1),
					   invoice_number INT,
					   date DATE,
					   car INT,
					   customer INT,
					   salesperson INT);
                       
CREATE TABLE salesperson (id CHAR(1),
						  staff_id INT,
					      name VARCHAR(20),
					      store VARCHAR(20));
                       
CREATE TABLE customers (id CHAR(1),
					    customer_id CHAR(5),
					    name VARCHAR(20),
					    phone_number VARCHAR(20),
					    cust_email VARCHAR(50),
                        cust_address VARCHAR(100),
                        cust_city VARCHAR(50),
                        cust_state VARCHAR(20),
                        cust_country VARCHAR(20),
                        cust_zipcode CHAR(10));

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customers;
                        
