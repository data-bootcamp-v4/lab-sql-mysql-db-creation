CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS customers;

CREATE TABLE `customers` (
  `id` int,
  `cust_id` int,
  `cust_name` varchar(25),
  `cust_phone` varchar(25),
  `cust_email` varchar(25),
  `address_id` int,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS cars;

CREATE TABLE `cars` (
  `id` int,
  `vin` varchar(25),
  `manufacture` varchar(25),
  `model` varchar(25),
  `year` year,
  `color` varchar(25),
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE `invoices` (
  `id` int,
  `invoice_number` int,
  `date` date,
  `car` int,
  `customer` int,
  `salesperson` int,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS address;

CREATE TABLE `address` (
  `address_id` int,
  `cust_address` varchar(25),
  `cust_city` varchar(25),
  `cust_state` varchar(25),
  `cust_country` varchar(25),
  `cust_zipcode` int,
  PRIMARY KEY (`address_id`)
);

DROP TABLE IF EXISTS salesperson;

CREATE TABLE `salesperson` (
  `id` int,
  `staff_id` int,
  `name` varchar(25),
  `store` varchar(25),
  PRIMARY KEY (`id`)
);


