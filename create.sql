USE lab_mysql
CREATE DATABASE IF NOT EXISTS lab_mysql
CREATE TABLE cars_inventory (
`car_id` char(10),
`VIN` char(17) not null,
`manufacturer` char(30),
`model` char(30),
`production_year` int,
`horse_power` int,
`motor_size` int,
`colour` char(10),
PRIMARY KEY (`car_id`)
);

CREATE TABLE suppliers (
`supplierID` int not null AUTO_INCREMENT,
`phone` char(17),
`email` char(30),
`address` char(30),
`VAT_number` int,
PRIMARY KEY (`supplierID`)
);

ALTER Table cars_inventory ADD `supplier_ID` char(30),
MODIFY car_id INT AUTO_INCREMENT,
ADD CONSTRAINT `inventory_supplier` FOREIGN KEY (`supplierID`) REFERENCES `suppliers`(`supplierID`);

ALTER TABLE cars_inventory 
ADD UNIQUE (VIN);

CREATE TABLE customers (
`customerID` int not null AUTO_INCREMENT,
`first_name` char(30),
`last_name` char(30),
`email` char(30),
`phone` int,
`address` char(30),
`job_title` char(30),
`store` char(30),
PRIMARY KEY (`customerID`)
);

CREATE TABLE sales_person (
`staffID` int not null AUTO_INCREMENT,
`first_name` char(30),
`last_name` char(30),
`email` char(30),
`phone` int,
`job_title` char(30),
`store` char(30),
PRIMARY KEY (`staffID`)
);

CREATE TABLE invoices (
`invoice_number` int AUTO_INCREMENT,
`date` date,
`VIN` char(17) not null,
`supplierID` int,
`staffID` int not null,
`customerID` int not null,
PRIMARY KEY (`invoice_number`),
CONSTRAINT `invoices_salesperson` FOREIGN KEY (`staffID`) REFERENCES `sales_person`(`staffID`),
CONSTRAINT `invoices_VIN` FOREIGN KEY (`VIN`) REFERENCES `cars_inventory`(`VIN`),
CONSTRAINT `invoices_supplier` FOREIGN KEY (`supplierID`) REFERENCES `suppliers`(`supplierID`),
CONSTRAINT `invoices_customer` FOREIGN KEY (`customerID`) REFERENCES `customers`(`customerID`)
);


