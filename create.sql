use lab_mysql;
DROP TABLE IF EXISTS sales_person;
CREATE TABLE sales_person (
staff_id int,
full_name varchar(100),
store_id int
);

use lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
VIN int,
manufacturer varchar(50),
model varchar (50),
year year,
color varchar (50),
price DECIMAL(10, 2)
);
use lab_mysql;
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
invoice_number int,
date date,
VIN int,
customer_id int,
staff_id int
);
use lab_mysql;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
customer_id int,
full_name VARCHAR(100),
phone_number VARCHAR(20),
email VARCHAR(100),
address VARCHAR(200),
city VARCHAR(50),
state VARCHAR(50),
country VARCHAR(50),
zip_code VARCHAR(10)
);