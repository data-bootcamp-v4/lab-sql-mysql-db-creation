CREATE DATABASE IF NOT EXISTS `lab-cars`;
USE `lab-cars`;

-- Cars Table
CREATE TABLE cars (
    VIN VARCHAR(20) PRIMARY KEY,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
    );
    
-- Customers Table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(20),
    model VARCHAR(50) NOT NULL
);

-- Salespersons Table
CREATE TABLE salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100),
    city VARCHAR(50)
);

-- Invoices Table
CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    VIN VARCHAR(20),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (VIN) REFERENCES cars(VIN) ON DELETE SET NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id) ON DELETE SET NULL
);

ALTER TABLE `Invoices` DROP FOREIGN KEY `fk_invoice_customer_id`;
ALTER TABLE `Invoices` DROP FOREIGN KEY `fk_invoice_staff_id`;

ALTER TABLE `Customers`
CHANGE COLUMN `customer_id` `customer_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE `Invoices`
MODIFY COLUMN `customer_id` INT NOT NULL;

ALTER TABLE `Invoices`
ADD CONSTRAINT `fk_invoice_customer_id`
FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE;

ALTER TABLE `Salespersons`
MODIFY COLUMN `staff_id` INT AUTO_INCREMENT; 

ALTER TABLE `Invoices`
MODIFY COLUMN `staff_id` INT NOT NULL;

ALTER TABLE `Invoices`
MODIFY COLUMN `invoice_nr` INT AUTO_INCREMENT;


ALTER TABLE `Invoices`
ADD CONSTRAINT `fk_invoice_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `Salespersons` (`staff_id`) ON DELETE CASCADE;

ALTER TABLE `Invoices`
MODIFY COLUMN `invoice_number` INT AUTO_INCREMENT;

CREATE DATABASE IF NOT EXISTS lab_mysql;

-- USE lab_mysql;