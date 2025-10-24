#CHALLENGE 1 

#Design an Entity-Relationship (E-R) diagram for your database.

#The database should have at least four tables: cars, customers, salespersons and invoices.

#The minimal information to be recorded is described below:

#Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.

#Customers - e.g. the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.

#Salespersons - e.g. staff ID, name, and the store at your company.

#Invoices - e.g. the invoice number, date, car, customer, and salesperson related to each car sale.


CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;

SHOW DATABASES;

CREATE TABLE cars (
 id INT AUTO_INCREMENT PRIMARY KEY,
   manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(50)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
id INT AUTO_INCREMENT PRIMARY KEY,
 cust_id VARCHAR (50),
 cust_name VARCHAR(50),
 cust_phone VARCHAR(50),
 cust_address VARCHAR(50),
 cust_city VARCHAR(50),
 cust_state VARCHAR(50),
 cust_country VARCHAR (50),
 cust_zipcode VARCHAR (50)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id VARCHAR(50),
sales_name VARCHAR(50),
store VARCHAR(50)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number VARCHAR(50),
invoice_date DATE,
car VARCHAR(50),
customer VARCHAR (50),
salesperson VARCHAR(50)
);






