CREATE DATABASE IF NOT EXISTS lab_my_sql;

USE lab_my_sql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (id INT AUTO_INCREMENT PRIMARY KEY,
			id_vin INT,
			manufacturer VARCHAR(30),
            model VARCHAR(30),
            year INT,
            color VARCHAR(30),
            price FLOAT);
            
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (id INT AUTO_INCREMENT PRIMARY KEY,
			id_cust INT,
			name VARCHAR(50),
            phone INT,
            email VARCHAR(50),
            address VARCHAR(50),
            city VARCHAR(50),
            state_province VARCHAR(50),
            country VARCHAR(50),
            zip_postal_code INT);

DROP TABLE IF EXISTS sales_persons;

CREATE TABLE sales_persons (id INT AUTO_INCREMENT PRIMARY KEY,
			id_staff INT,
			name_staff VARCHAR(30),
            store VARCHAR(30));
            
DROP TABLE IF EXISTS invoices;            

CREATE TABLE invoices (id INT AUTO_INCREMENT PRIMARY KEY,
			inv_nr INT UNIQUE,
			date DATE,
            customer_id INT,
            car_id INT,
            sales_id INT,
            FOREIGN KEY (customer_id) REFERENCES customers(id),
            FOREIGN KEY (car_id) REFERENCES cars(id),
            FOREIGN KEY (sales_id) REFERENCES sales_persons(id));

SELECT * FROM lab_my_sql.cars

USE lab_my_sql;
SHOW TABLES;
DESCRIBE sales_persons;


