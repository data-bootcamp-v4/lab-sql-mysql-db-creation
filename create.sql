CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS customers;

CREATE TABLE `customers` (
  `id` int not null AUTO_INCREMENT,
  `cust_id` int null,
  `cust_name` varchar(25) null,
  `cust_phone` varchar(25) null,
  `cust_email` varchar(25) null,
  `address_id` int not null,
  PRIMARY KEY (`id`),
  foreign key (`address_id`) references address(address_id)
  );

DROP TABLE IF EXISTS cars;

CREATE TABLE `cars` (
  `id` int not null AUTO_INCREMENT,
  `vin` varchar(25) null,
  `manufacture` varchar(25) null,
  `model` varchar(25) null,
  `year` year  null,
  `color` varchar(25) null,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE `invoices` (
  `id` int not null AUTO_INCREMENT,
  `invoice_number` int null,
  `date` date null,
  `car` int null,
  `customer` int null,
  `salesperson` int null,
  PRIMARY KEY (`id`),
  foreign key (`car`) references cars(id),
    foreign key (`customer`) references customers(id),
      foreign key (`salesperson`) references salesperson(id)
);

DROP TABLE IF EXISTS address;

CREATE TABLE `address` (
  `address_id` int not null AUTO_INCREMENT,
  `cust_address` varchar(25) null,
  `cust_city` varchar(25) null,
  `cust_state` varchar(25) null,
  `cust_country` varchar(25) null,
  `cust_zipcode` int null,
  PRIMARY KEY (`address_id`)
);

DROP TABLE IF EXISTS salesperson;

CREATE TABLE `salesperson` (
  `id` int not null AUTO_INCREMENT,
  `staff_id` int null,
  `name` varchar(25) null,
  `store` varchar(25) null,
  PRIMARY KEY (`id`)
);


