
#second challenge, you will create the database and tables using MySQL and the CREATE DATABASE and CREATE TABLE statements.
#third challenge, you will insert data into the tables using the INSERT INTO statement. 
#bonus challenge, you will update data using the UPDATE statement and delete data using the DELETE statement.

DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS sales_persons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS invoices;

CREATE TABLE cars(
				internal_number int default 0,
                plate_number varchar(10) default '00-00-00',
                customer_id int default 00000,
                vin varchar(22),
                manufacturer varchar(20),
                model varchar(20),
                year int,
                color varchar(10));
                
CREATE TABLE sales_persons(
				staff_id int,
                vendor_name varchar(20),
                store varchar(20));
                
CREATE TABLE customers(
				customer_id int,
                customer_name varchar(30),
                phone_number varchar(20),
                email varchar(30) default '-',
                address varchar(50),
                city varchar(20),
                province varchar(20),
                country varchar(20),
                zip_code int);
                
CREATE TABLE invoices (
				invoice_number int,
                sales_date date,
                customer_id int,
                internal_number int,
                staff_id int);
                