
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS cars;

CREATE TABLE customers(id INT PRIMARY KEY AUTO_INCREMENT, customer_id varchar(20), cust_name varchar(20), phone_no VARCHAR(30), email varchar(30), address VARCHAR(50), city varchar(20), state varchar(20), country varchar(20), zipcode SMALLINT
);

CREATE TABLE salespersons(id INT PRIMARY KEY AUTO_INCREMENT, staff_id varchar(20), staff_name varchar(20), store varchar(20), staff_rank SMALLINT
);
CREATE TABLE cars(id INT PRIMARY KEY AUTO_INCREMENT, vin varchar(30) , model VARCHAR(20), year SMALLINT, manufacturer varchar(20), color varchar(10)
);

CREATE TABLE invoices(id INT PRIMARY KEY AUTO_INCREMENT, invoice_no varchar(20), customer INT, date DATETIME, salesperson INT, car INT, 
FOREIGN KEY (customer) REFERENCES customers(id), FOREIGN KEY (salesperson) REFERENCES salespersons(id), FOREIGN KEY (car) REFERENCES cars(id)
);
        
	
    
    
    