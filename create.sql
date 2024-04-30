CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE lab_mysql.cars (vehicle_id INT PRIMARY KEY, 
							vin varchar(50)
							manufacturer VARCHAR(50),
                            model VARCHAR(50),
                            year INT,
                            color VARCHAR(50));
DROP TABLE cars;
CREATE TABLE lab_mysql.cars (vehicle_id INT PRIMARY KEY, 
							vin varchar(50),
							manufacturer VARCHAR(50),
                            model VARCHAR(50),
                            year INT,
                            color VARCHAR(50));

DROP TABLE IF EXISTS invoices;
CREATE TABLE lab_mysql.invoices (invoice_id INT PRIMARY KEY, 
								date DATE,
								vehicle_id INT,
								year INT,
								customer_id INT,
								employee_id INT);


DROP TABLE IF EXISTS hr;                            
CREATE TABLE lab_mysql.hr (employee_id INT PRIMARY KEY, 
							employee_name varchar (50),
                            store_id VARCHAR (50));   
                            
DROP TABLE IF EXISTS customer;                            
CREATE TABLE lab_mysql.customer (customer_id INT PRIMARY KEY, 
								customer_name VARCHAR (50),
								phone_number VARCHAR (30),
								email VARCHAR (50),
								customer_address VARCHAR (50),
								city VARCHAR (50),
								state_province VARCHAR (50),
								country VARCHAR (30),
								postal_code VARCHAR (30));  

