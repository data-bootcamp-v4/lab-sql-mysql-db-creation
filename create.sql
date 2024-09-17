CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(id_car INT,
				  manufacturer VARCHAR(50), 
                  model VARCHAR(50)) ;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(id_customer INT,
					   name_customer VARCHAR(50), 
                       phone_number VARCHAR(50),
                       email VARCHAR(50)) ;
                       
DROP TABLE IF EXISTS sales_person;
CREATE TABLE sales_person(id_staff INT,
					      name_stores VARCHAR(50), 
                          store VARCHAR(50)) ;

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(number_invoice INT,
					  date_invoice DATE, 
                      id_car INT,
                      id_customer INT,
                      id_staff INT);