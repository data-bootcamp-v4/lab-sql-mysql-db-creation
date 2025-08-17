CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  vin varchar(17) PRIMARY KEY,
  manufacturer varchar(50) NOT NULL,
  model varchar(50) NOT NULL,
  year int NOT NULL,
  color varchar(50) NOT NULL
);

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
  customer_id int PRIMARY KEY AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  phone_number varchar(20),
  email varchar(100),
  address varchar(100),
  city varchar(50),
  state_provence varchar(50),
  country varchar(50),
  zip_postcode varchar(20)
);

DROP TABLE IF EXISTS sales_person;
CREATE TABLE sales_person (
  staff_id varchar(20) PRIMARY KEY,
  name varchar(50) NOT NULL,
  store varchar(20) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice (
  id int PRIMARY KEY AUTO_INCREMENT,
  staff_id varchar(20) NOT NULL,
  vin varchar(17) UNIQUE NOT NULL,
  customer_id int NOT NULL,
  created_at date NOT NULL
);

ALTER TABLE invoice ADD FOREIGN KEY (staff_id) REFERENCES sales_person (staff_id);

ALTER TABLE invoice ADD FOREIGN KEY (vin) REFERENCES cars (vin);

ALTER TABLE invoice ADD FOREIGN KEY (customer_id) REFERENCES customer (customer_id);
