CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR,
    color VARCHAR(30)
);
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,   
    cust_id INT NOT NULL,                
    cust_name VARCHAR(100) NOT NULL,     
    cust_phone VARCHAR(30),              
    cust_email VARCHAR(100),             
    cust_address VARCHAR(200),           
    cust_city VARCHAR(100),              
    cust_state VARCHAR(100),             
    cust_country VARCHAR(100),           
    cust_zipcode VARCHAR(20)             
);
-- Tabla de vendedores
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    staff_id INT NOT NULL,             
    name VARCHAR(100) NOT NULL,        
    store VARCHAR(100)                  
);
-- Tabla de facturas (ventas)
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,      
    invoice_number VARCHAR(20) NOT NULL,    
    date DATE,                              
    car_id INT,                             
    customer_id INT,                        
    salesperson_id INT,                     
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
