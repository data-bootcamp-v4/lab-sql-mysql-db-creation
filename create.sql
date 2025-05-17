CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
CREATE TABLE cars (
	id_car INT NOT NULL AUTO_INCREMENT,
  VIN VARCHAR(17) NOT NULL UNIQUE,
  manufacturer VARCHAR(100) NOT NULL,
  color VARCHAR(50)NOT NULL,
  model VARCHAR(100) NOT NULL,
  year_car YEAR NOT NULL,
  PRIMARY KEY (id_car)
);
CREATE TABLE customers (
	id_customer INT NOT NULL AUTO_INCREMENT,
  customer_id INT NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  phone_number VARCHAR(20),
  email VARCHAR(150),
  address VARCHAR(255),
  city VARCHAR(100),
  state_province VARCHAR(100),
	country VARCHAR(100),
  zip_postal_code VARCHAR(20),
  PRIMARY KEY (id_customer)
);
CREATE TABLE salespersons(
	id_salesperson INT NOT NULL AUTO_INCREMENT,
	staff_id INT NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,
  store VARCHAR(100) NOT NULL,
  PRIMARY KEY(id_salesperson)
);
CREATE TABLE invoices(
  id_invoice INT NOT NULL AUTO_INCREMENT,
  invoice_number INT NOT NULL,
  date_invoice date NOT NULL,
  fk_car INT NOT NULL,
  fk_customer INT NOT NULL,
  fk_salesperson INT NOT NULL,
  PRIMARY KEY(id_invoice),
  FOREIGN KEY(fk_car) REFERENCES cars(id_car),
  FOREIGN KEY(fk_customer) REFERENCES customers(id_customer),
  FOREIGN KEY(fk_salesperson) REFERENCES salespersons(id_salesperson)
);