-- Challenge 2 - Create the Database and Tables

-- In this challenge, you will create the database and tables based on the database design you created in Challenge 1.

    -- Open MySQL Workbench.

    -- Create a new file named create.sql.

    -- Create a MySQL database for this lab using SQL Query Script in MySQL Workbench. You can execute the following code:

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Write SQL queries to create the tables and columns based on your database design.

-- You will use the CREATE TABLE statement for this purpose. You can find the reference for the CREATE TABLE statement here.

-- To test your CREATE TABLE statement, you should add a DROP TABLE statement above each CREATE TABLE statement in your script, like this:
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_id int AUTO_INCREMENT primary key,
VIN text, 
manufacturer text,
model text,
year int,
color text
);


CREATE TABLE customers (id int AUTO_INCREMENT primary key,
cust_id text,
name text, 
phone text,
email text,
address text,
city text,
state text,
country text,
postalcode text
);


CREATE TABLE salespersons (id int AUTO_INCREMENT primary key,
staff_id text,
name text, 
store text
);


CREATE TABLE invoices (invoice_id int AUTO_INCREMENT primary key,
invoice_n text, 
date text,
car_id int,
customer_id int,
staff_id int,
foreign key (car_id) references cars(car_id),
foreign key (customer_id) references customers(id),
foreign key (staff_id) references salespersons(id)
);

    -- Make sure to end each statement with a semicolon.

    -- Save the create.sql file and execute it to create the database and tables.

-- Challenge 3 - Seeding the Database

-- The purpose of database seeding is to provide some initial data for an empty database to start software development based on that data.
