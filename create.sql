CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE table Cars(
car_id int auto_increment PRIMARY KEY,
VIN varchar(100),
Manufacturer varchar(100),
Model VARCHAR(100),
Year year,
Color varchar(50)
);

CREATE table Customer(
customer_id INT auto_increment primary key,
customer_identifier INT,
Name varchar(100),
Phone varchar(20),
Email varchar(50),
Address varchar(200),
City varchar(100),
State_Provience varchar(100),
Country varchar(100),
Zip_code varchar(20)
);

create table Salespersons(
staff_id int auto_increment primary key,
staff_identifier int,
Name varchar(100),
Store varchar(100)
);

create table Invoices(
invoice_id int auto_increment primary key,
invoice_number varchar(50),
Date datetime,
car_id int,
customer_id int,
staff_id int,
foreign key (car_id) references Cars(car_id),
foreign key (customer_id) references Customer(customer_id),
foreign key (staff_id) references Salespersons(staff_id)
);

SELECT * FROM Cars;
SELECT * FROM Customer;
SELECT * FROM Salespersons;
SELECT * FROM Invoices;
