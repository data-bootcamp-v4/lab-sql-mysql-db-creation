CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS lab_mysql.cars(
vin_number VARCHAR(20),
manufaturer VARCHAR(20),
model VARCHAR(20),
year DATETIME,
color ENUM("white", "black", "grey", "blue", "red"),
PRIMARY KEY (vin_number)
);

CREATE TABLE IF NOT EXISTS lab_mysql.customers(
id_customer INT AUTO_INCREMENT,
name_customer VARCHAR(20),
phone_number VARCHAR(20),
email VARCHAR(50),
address VARCHAR(50),
city VARCHAR(25),
state_province VARCHAR(25),
country VARCHAR(25),
zip_postal INT NOT NULL,
PRIMARY KEY (id_customer)
);

CREATE TABLE IF NOT EXISTS lab_mysql.sales_persons(
id_staff INT NOT NULL,
name_staff VARCHAR(20),
store VARCHAR(20),
PRIMARY KEY (id_staff)
);

CREATE TABLE IF NOT EXISTS lab_mysql.invoices(
invoice_number INT NOT NULL,
date DATETIME,
vin_number VARCHAR(20),
id_customer INT NOT NULL,
id_staff INT NOT NULL,
PRIMARY KEY (invoice_number),
FOREIGN KEY (id_customer) REFERENCES customers (id_customer) ON DELETE CASCADE,
FOREIGN KEY (id_staff) REFERENCES sales_persons (id_staff) ON DELETE CASCADE,
FOREIGN KEY (vin_number) REFERENCES cars (vin_number) ON DELETE CASCADE
);