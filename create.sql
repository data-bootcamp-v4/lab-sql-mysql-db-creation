CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars ( 
                    id int AUTO_INCREMENT PRIMARY KEY,
                    vin varchar(255),
                    manufacturer varchar(255),
                    model varchar(255),
                    year int not null,
                    color varchar(255),
                    CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `salespersons` (`store`)
                    );
                    
drop table cars;

-- Customers: 
CREATE TABLE customers (
    cust_id INT AUTO_INCREMENT PRIMARY KEY, 
    cust_name VARCHAR(50) NOT NULL, 
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(100) NOT NULL,
    cust_address VARCHAR(100) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `invoices` (`invoice_number`)
);                    

drop table customers;

-- Salespersons:
CREATE TABLE salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL, 
    store VARCHAR(50)
);

-- Invoices:
CREATE TABLE invoices (
invoice_number int AUTO_INCREMENT PRIMARY KEY, 
date varchar(255), 
car int, 
customer int, 
salesperson int,
CONSTRAINT `car` FOREIGN KEY (`car`) REFERENCES `cars` (`id`),
CONSTRAINT `salesperson` FOREIGN KEY (`salesperson`) REFERENCES `salespersons` (`staff_id`)
);

drop table invoices;