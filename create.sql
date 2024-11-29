	CREATE DATABASE IF NOT EXISTS lab_mysql;
	
	USE lab_mysql;
    

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS customers;    
CREATE TABLE customers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(50) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(50),
    cust_address  VARCHAR(100) NOT NULL,
    cust_city  VARCHAR(100) NOT NULL,
    cust_state_province  VARCHAR(100) NOT NULL,
    cust_zipcode INT  NOT NULL,
    cust_country VARCHAR(100) NOT NULL,
    CONSTRAINT unique_cust_id UNIQUE (cust_id)
);

	DROP TABLE IF EXISTS salepersons;
	CREATE TABLE salepersons(
    staff_id VARCHAR(255) NOT NULL,
    staff_name VARCHAR(255) NOT NULL,
    staff_start_date DATE NOT NULL,
    ref_staff INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CONSTRAINT  unique_staff_id UNIQUE (staff_id)
);
    
	DROP TABLE IF EXISTS cars;
	CREATE TABLE cars (
	car_vin CHAR(255) NOT NULL ,
    car_manufacturer VARCHAR(255) NULL,
    car_model VARCHAR(255) NULL,
    car_year CHAR(4) NOT NULL,
    car_color TEXT NOT NULL,
    ref_car INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CONSTRAINT unique_car_vin UNIQUE (car_vin)
	);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    inv_date DATE NOT NULL,
    car_id CHAR(255)  NOT NULL,
    customer_id INT  NOT NULL,
    salesperson_id VARCHAR(255)  NOT NULL,
    CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES cars(car_vin),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(cust_id),
    CONSTRAINT fk_salesperson_id FOREIGN KEY (salesperson_id) REFERENCES salepersons(staff_id),
    CONSTRAINT unique_invoice_number UNIQUE (invoice_number)
);
    