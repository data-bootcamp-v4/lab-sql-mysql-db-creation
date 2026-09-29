CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;



DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
	ID_car INT AUTO_INCREMENT,
    model VARCHAR(100),
    manufacturer VARCHAR(100),
    year_ INT,
    colour ENUM('black', 'White', 'grey','other'),
    VIN VARCHAR(100),
    PRIMARY KEY (ID_car)
  );
  
  
DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
	ID_customer INT AUTO_INCREMENT,
    dni INT DEFAULT NULL,
    name_customer VARCHAR(100),
    phone_number VARCHAR(100),
    email VARCHAR(100) DEFAULT 'no mail',
    adress VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    ZIP VARCHAR(10),
    PRIMARY KEY (ID_customer)
  );
 
 
DROP TABLE IF EXISTS salesperson;
CREATE TABLE IF NOT EXISTS salesperson (
	ID_salesperson INT AUTO_INCREMENT,
    name_staff VARCHAR(100) DEFAULT 'general',
    staff_ID VARCHAR(100),
    store VARCHAR(100),
    city VARCHAR(100) DEFAULT 'Madrid',
    PRIMARY KEY (ID_salesperson)
  );
  
  
  
DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
    ID_invoice INT AUTO_INCREMENT,
    invoice_number INT,
    invoice_date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    PRIMARY KEY (ID_invoice),
    FOREIGN KEY (car_id) REFERENCES cars(ID_car),
    FOREIGN KEY (customer_id) REFERENCES customers(ID_customer),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(ID_salesperson)
    );
    
    

    
    