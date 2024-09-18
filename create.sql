CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(50),
    phone_number VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip INT,
    PRIMARY KEY (customer_id)
);

create table `cars`(
`vin` VARCHAR(50),
`manufacturer` VARCHAR(50),
`model` VARCHAR(50),
`year` INT,
`color` VARCHAR(50),
PRIMARY KEY (`vin`)
);

CREATE TABLE `salespersons` (
    `staff_id` INT,
    `name` VARCHAR(50),
    `store` VARCHAR(50),
    PRIMARY KEY (staff_id)
);

CREATE TABLE `invoices` (
    `invoice_number` INT,
    `date` date,
    `vin` VARCHAR(50),
    `customer_id` INT,
    `staff_id` INT,
    PRIMARY KEY (invoice_number),
    FOREIGN KEY (vin) REFERENCES cars(vin),      
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id), 
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);
