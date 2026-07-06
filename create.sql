## challenge 2 ##

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (id INT AUTO_INCREMENT PRIMARY KEY,
					vin VARCHAR(50),
					manufacturer VARCHAR(50),	
					model VARCHAR(50),
                    year INT,
                    color VARCHAR(50)
                    );

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (id INT AUTO_INCREMENT PRIMARY KEY,
					customer_id VARCHAR(50),
                    cust_name VARCHAR(50),	
					cust_phone VARCHAR(50),
                    cust_email VARCHAR(50),
                    cust_address VARCHAR(50),
                    cust_city VARCHAR(50),
                    cust_state VARCHAR(50),
                    cust_country VARCHAR(50),
                    cust_zipcode INT
                    );

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (id INT AUTO_INCREMENT PRIMARY KEY,
					staff_id VARCHAR(50), 
					name VARCHAR(50),
                    store VARCHAR(50)
                    );

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (id INT AUTO_INCREMENT PRIMARY KEY,
					invoice_number INT,
                    date DATE,	
					car_id INT,
                    customer_id INT,
                    staff_id INT,
                    FOREIGN KEY (car_id) REFERENCES cars(id),
                    FOREIGN KEY (customer_id) REFERENCES customers(id),
                    FOREIGN KEY (staff_id) REFERENCES salespersons(id)
                    );
                    






                    