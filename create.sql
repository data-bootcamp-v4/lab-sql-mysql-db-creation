CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50) NOT NULL,
    car_year YEAR,
    color ENUM('Blue', 'Red', 'White', 'Silver', 'Gray') DEFAULT 'white'
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNIQUE NOT NULL,
    c_name VARCHAR(50) NOT NULL,
    phone VARCHAR(30),
    email VARCHAR(50) ,
    addres VARCHAR(100),
    city VARCHAR(30),
    state_province VARCHAR(30),
    country VARCHAR(30),
    zip_postal INT
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,         
    staff_id VARCHAR(17) UNIQUE NOT NULL,       
    s_name VARCHAR(50) NOT NULL,                
    store VARCHAR(50) NOT NULL                       
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_num INT UNIQUE NOT NULL,
    in_date DATE NOT NULL,
    
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);



