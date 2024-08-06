CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE cars;
CREATE TABLE cars ( cars_ID int NOT NULL auto_increment, PRIMARY KEY(cars_ID),
					VIN VARCHAR(20),
					manufacturer VARCHAR(20),
                    model VARCHAR(30),
                    year INT(4),
                    color VARCHAR(20));
DROP TABLE invoices;
CREATE TABLE invoices (invoices_ID int NOT NULL auto_increment, PRIMARY KEY (invoices_ID),
						invoice_number VARCHAR(15),
                        date DATE,
						cars_ID INT,
                        customer_ID VARCHAR(15),
                        staff_ID VARCHAR(10));
DROP TABLE customers;
CREATE TABLE customers (cust_Number int NOT NULL auto_increment, PRIMARY KEY (cust_Number),
						cust_ID VARCHAR(15),
                        cust_name VARCHAR(30),
                        cust_phone VARCHAR(20),
                        cust_email VARCHAR(30),
                        cust_address VARCHAR(50),
                        cust_city VARCHAR(25),
                        cust_state VARCHAR(25),
                        cust_country VARCHAR(30),
                        cust_zipcode VARCHAR(15));
                        
CREATE TABLE sales_person (sp_Number int NOT NULL auto_increment, PRIMARY KEY (sp_Number),
							staff_ID VARCHAR(10),
                            name VARCHAR(30),
                            store VARCHAR(25));
