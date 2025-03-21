-- Create the database
DROP DATABASE IF EXISTS lab1_mysql;
CREATE DATABASE IF NOT EXISTS lab1_mysql;


USE lab1_mysql;

-- Create cars table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    price DECIMAL(10, 2),
    color varchar(50),
    car_condition boolean
);

-- Create customers table


CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20)
);
-- update the cars table 
ALTER TABLE cars
ADD COLUMN vin VARCHAR(50) NOT NULL,
ADD COLUMN color VARCHAR(50),
ADD COLUMN car_condition BOOLEAN;
-- Alter customers table 
ALTER TABLE customers
ADD COLUMN address VARCHAR(255),
ADD COLUMN city VARCHAR(100),
ADD COLUMN state VARCHAR(100),
ADD COLUMN country VARCHAR(100),
ADD COLUMN zip_postal VARCHAR(20);

-- creat salesperson table
CREATE TABLE sales_person (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name INT NOT NULL,
    store INT,
    sale_date DATE NOT NULL,
    position varchar(55)

);
-- creat invoice table 

create table invoices (
invoice_id varchar(50) not null primary key,
sales_date date,
car varchar(50),
customer varchar(50),
sales_person varchar(50)
);



