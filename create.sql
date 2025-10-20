-- creating a database lab_mysql --
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- activating workspace as created database --
USE lab_mysql; 

-- creating a table cars --
CREATE TABLE cars (
    car_VIN_number VARCHAR(40) PRIMARY KEY,
    manufacturer VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    production_year YEAR NOT NULL,
    color VARCHAR(40) NOT NULL
);
     
-- creating a table customers --
CREATE TABLE customers (
    customer_ID VARCHAR(40) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(40),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_code VARCHAR(20)
);  
       
-- creating a table salespersons --
CREATE TABLE salespersons (
    staff_ID VARCHAR(40) PRIMARY KEY,
    salesperson_name VARCHAR(100) NOT NULL,
    store_ID VARCHAR(40) NOT NULL
);    

-- creating a table invoices --
CREATE TABLE invoices (
    invoice_number VARCHAR(40) PRIMARY KEY,
    sale_date DATE NOT NULL,
    car_VIN_number VARCHAR(40) NOT NULL,
    customer_ID VARCHAR(40) NOT NULL,
    staff_ID VARCHAR(40) NOT NULL,
    FOREIGN KEY (car_VIN_number) REFERENCES cars(car_VIN_number),
    FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID),
    FOREIGN KEY (staff_ID) REFERENCES salespersons(staff_ID)
);

-- check for created tables --
SHOW TABLES;

