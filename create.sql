CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (VIN INT AUTO_INCREMENT PRIMARY KEY, manufacturer VARCHAR(50), 
model VARCHAR(20), year INT, color VARCHAR(10));

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (customer_id INT AUTO_INCREMENT PRIMARY KEY, customer_name VARCHAR(100), 
phone_number INT, email VARCHAR(100), address VARCHAR(300), city VARCHAR(50),
 ZIP INT);
 
 DROP TABLE IF EXISTS sales_persons;
 
CREATE TABLE sales_persons (staff_id INT AUTO_INCREMENT PRIMARY KEY, sales_person_name VARCHAR(100), 
 store VARCHAR(300));
 
 DROP TABLE IF EXISTS invoices;
 
CREATE TABLE invoices (invoice_number INT AUTO_INCREMENT PRIMARY KEY, date INT, car INT, customer INT,
sales_person INT)


-- Define Foreign Keys here
    FOREIGN KEY (car) REFERENCES cars(VIN),
    FOREIGN KEY (customer) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_person) REFERENCES sales_persons(staff_id)
);

 
 