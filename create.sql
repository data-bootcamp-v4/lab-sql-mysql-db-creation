CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (vehicle_id_number CHAR(10),
				   manufacturer VARCHAR(10),
                   model VARCHAR(30),
                   year CHAR(4),
                   color VARCHAR(6));
                   
CREATE TABLE customers (customer_id CHAR(15),
						name VARCHAR(50),
                        phone_number CHAR(8),
                        email VARCHAR(30),
                        address VARCHAR(50),
                        city VARCHAR(20),
                        state VARCHAR(2),
                        country VARCHAR(10),
                        ZIP_code CHAR(5));
                        
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (staff_ID CHAR(10),
						   name VARCHAR(50),
                           store VARCHAR(15));
                           
DROP TABLE IF EXISTS invoices;
                            
CREATE TABLE invoices (invoice_number VARCHAR(10),
						sale_date DATETIME,
                        VIN CHAR(10),
                        customer_id CHAR(15),
                        staff_id CHAR(10));
