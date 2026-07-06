CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql; 

DROP TABLE IF EXISTS cars; 
CREATE TABLE cars (vehicle_id INT PRIMARY KEY, 
					car_name VARCHAR (30), 
                    manufacturer VARCHAR (30), 
                    model VARCHAR (20), 
                    car_year INT, 
                    color VARCHAR (20)
);

DROP TABLE IF EXISTS customer; 
CREATE TABLE customer ( customer_id INT PRIMARY KEY, 
						customer_name VARCHAR (20),
                        phone_number VARCHAR (20), 
                        email VARCHAR (30), 
                        address VARCHAR (20), 
                        state_province VARCHAR (20), 
                        postal_code VARCHAR (20), 
                        country VARCHAR (20)
);


DROP TABLE IF EXISTS salesperson; 
CREATE TABLE salesperson (staff_id INT PRIMARY KEY, 
							staff_name VARCHAR (20), 
                            store VARCHAR (20)
);

DROP TABLE IF EXISTS invoices; 
CREATE TABLE invoices (invoice_number INT, 
						invoice_date DATE, 
                        customer_id INT, 
                        salesperson_id INT
);

SHOW TABLES; 
