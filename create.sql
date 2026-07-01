CREATE SCHEMA mysql_db_lab;
USE mysql_db_lab; 


CREATE TABLE IF NOT EXISTS cars (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
	vin_id VARCHAR(17) UNIQUE,
    manufacturer_name VARCHAR(50), 
    model VARCHAR(50),
    year YEAR,
    colour VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS customers (
	cust_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50) UNIQUE,
    customer_name VARCHAR(50),
    phone_no VARCHAR(50), 
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    post_code VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS salespersons (
	sta_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(50) UNIQUE, 
    staff_name VARCHAR(100), 
    store_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS invoices (
	inv_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_no VARCHAR(50) NOT NULL UNIQUE, 
    invoice_date DATETIME,
    car_id INT,
    cust_id INT,
    sta_id INT,
    FOREIGN KEY (car_id) REFERENCES cars (car_id),
    FOREIGN KEY (cust_id) REFERENCES customers (cust_id),
    FOREIGN KEY (sta_id) REFERENCES salespersons (sta_id)
);
