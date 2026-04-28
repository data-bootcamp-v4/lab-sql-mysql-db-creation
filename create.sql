CREATE SCHEMA lab_mysql;
USE lab_mysql;

-- CHALLENGE 1
DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS lab_mysql.cars (
car_id INT PRIMARY KEY AUTO_INCREMENT,
VIN CHAR(11),
manufacturer VARCHAR(20),
model ENUM ('model1','model2','model3','model4'),
year INT DEFAULT NULL,
color VARCHAR(15),
CONSTRAINT check_year CHECK (year = 4)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS lab_mysql.customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
phone_number INT DEFAULT NULL,
email VARCHAR(30) DEFAULT NULL,
address VARCHAR(50) DEFAULT NULL,
city VARCHAR(20) DEFAULT NULL,
province VARCHAR(30) DEFAULT NULL,
country VARCHAR(30) DEFAULT NULL,
postal_code INT DEFAULT NULL
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE IF NOT EXISTS lab_mysql.salespersons (
staff_id INT PRIMARY KEY AUTO_INCREMENT,
name_employee VARCHAR(20),
store ENUM('store1','store2','store3')
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS lab_mysql.invoices (
invoice_number INT PRIMARY KEY AUTO_INCREMENT,
date_time DATETIME,
car_id INT NOT NULL,
FOREIGN KEY (car_id) REFERENCES cars (car_id),
customer_id INT  NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
salesperson_id INT NOT NULL,
FOREIGN KEY (salesperson_id) REFERENCES salespersons (staff_id)
);

ALTER TABLE cars
DROP CONSTRAINT check_year;

ALTER TABLE customers
MODIFY COLUMN phone_number VARCHAR(20);

ALTER TABLE customers
MODIFY COLUMN postal_code VARCHAR(10);