CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
    VIN VARCHAR(30) NOT NULL PRIMARY KEY,
    manufacturer VARCHAR(20),
    model VARCHAR(20),
    year YEAR, 
    car_color VARCHAR(20)
);
  
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL, 
    customer_phone VARCHAR(20),
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip CHAR(10) 
);

CREATE TABLE IF NOT EXISTS salespersons (
    staff_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(50),
	last_name VARCHAR(50),
    store VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS invoices (
    invoice_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date DATE,
    VIN VARCHAR(30),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (VIN)
        REFERENCES cars (VIN),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (staff_id)
        REFERENCES salespersons (staff_id)
);

SHOW TABLES;
    
