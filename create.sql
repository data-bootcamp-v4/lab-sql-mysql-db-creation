CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
CREATE TABLE `Invoices` (
  `invoice_number` int,
  `rental_ID` varchar(6),
  `date_invoice` date,
  `date_rental` date,
  `VIN` varchar(10),
  `customer_ID` varchar(6),
  `name` varchar(100),
  `address` varchar(100),
  `city` varchar(100),
  `state/province` varchar(100),
  `country` varchar(100),
  `zip/postal_code` varchar(100),
  `staff_ID` varchar(6)
);

CREATE TABLE `Rentals` (
  `rental_ID` varchar(6),
  `date_rental` date,
  `VIN` varchar(10),
  `customer_ID` varchar(6),
  `staff_ID` varchar(6),
  PRIMARY KEY (`rental_ID`)
);

CREATE TABLE `Cars` (
  `VIN` varchar(10),
  `manufacturer` varchar(100),
  `model` varchar(100),
  `year` year,
  `color` varchar(100),
  PRIMARY KEY (`VIN`)
);

CREATE TABLE `Salespersons` (
  `staff_ID` varchar(6),
  `name` varchar(100),
  `store` varchar(100),
  PRIMARY KEY (`staff_ID`)
);

CREATE TABLE `Customers` (
  `customer_ID` varchar(6),
  `name` varchar(100),
  `phone_number` varchar(100),
  `email` varchar(100),
  `address` varchar(100),
  `city` varchar(100),
  `state/province` varchar(100),
  `country` varchar(100),
  `zip/postal_code` varchar(100),
  PRIMARY KEY (`custoimer_ID`)
);



