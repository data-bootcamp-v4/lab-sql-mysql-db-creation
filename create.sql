CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_id INT AUTO_INCREMENT PRIMARY KEY,
				  manufacturer VARCHAR (50),
                  model VARCHAR (50),
                  year INT,
                  color VARCHAR (50));
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INT AUTO_INCREMENT PRIMARY KEY,
					    name VARCHAR (50),
                        phone_number INT,
                        email VARCHAR (70),
                        adress VARCHAR (100),
                        city VARCHAR (50),
                        state VARCHAR (50),
                        country VARCHAR (50),
                        zip INT);
DROP TABLE IF EXISTS sales_persons;
CREATE TABLE sales_persons (staff_id INT AUTO_INCREMENT PRIMARY KEY,
							name VARCHAR (100),
                            store VARCHAR (100));
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (invoices_number INT AUTO_INCREMENT PRIMARY KEY,
					   date INT,
                       customer_id INT,
                       staff_id INT,
                       car_id INT,
					   FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
                       FOREIGN KEY (staff_id) REFERENCES sales_persons(staff_id),
                       FOREIGN KEY (car_id) REFERENCES cars(car_id));