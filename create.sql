CREATE DATABASE IF NOT EXISTS Cars_Lab; 
USE Cars_Lab;
CREATE TABLE cars(car_id INT PRIMARY KEY, vin varchar(50), manufacturer varchar(50), model varchar(50), year INT, color varchar(50));
CREATE TABLE customers(id INT PRIMARY KEY, cust_id INT, cust_name varchar(50), cust_email varchar(50) DEFAULT '-', cust_address varchar(50),
cust_city varchar(50), cust_state varchar(50), cust_country varchar(50), cust_zipcode INT); 
CREATE TABLE salespersons (id INT PRIMARY KEY, staff_id INT , name varchar(50), store varchar(50));
CREATE TABLE invoices (invoice_id INT PRIMARY KEY, invoice_number INT, date DATE, car_id INT, customer_id INT, salesperson INT, 
 CONSTRAINT car_fk FOREIGN KEY (car_id) REFERENCES cars(car_id),
 constraint cust_id foreign key (customer_id) references customers(id),
 constraint sales_id foreign key (salesperson) references salespersons(id));
