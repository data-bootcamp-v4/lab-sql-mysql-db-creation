CREATE SCHEMA lab_mysql;
USE lab_mysql;

-- CHALLENGE 1

CREATE TABLE IF NOT EXISTS lab_mysql.cars (
VIN CHAR(11) PRIMARY KEY,
manufacturer VARCHAR(20),
model ENUM ('model1','model2','model3','model4'),
color VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS lab_mysql.customers (
customer_id CHAR(9) PRIMARY KEY,
phone_number INT DEFAULT NULL,
email VARCHAR(30) DEFAULT NULL,
address VARCHAR(50) DEFAULT NULL,
city VARCHAR(20) DEFAULT NULL,
province VARCHAR(30) DEFAULT NULL,
country VARCHAR(30) DEFAULT NULL,
postal_code INT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS lab_mysql.salespersons (
staff_id INT PRIMARY KEY AUTO_INCREMENT,
name_employee VARCHAR(20),
store ENUM('store1','store2','store3')
);

CREATE TABLE IF NOT EXISTS lab_mysql.invoices (
invoice_number INT PRIMARY KEY,
date_time DATETIME,
car CHAR(11) NOT NULL,
FOREIGN KEY (car) REFERENCES cars (VIN),
customer CHAR(9) NOT NULL,
FOREIGN KEY (customer) REFERENCES customers (customer_id),
salesperson INT NOT NULL,
FOREIGN KEY (salesperson) REFERENCES salespersons (staff_id)
);

ALTER TABLE cars
ADD COLUMN year INT DEFAULT NULL;

ALTER TABLE invoices
MODIFY COLUMN invoice_number INT AUTO_INCREMENT;