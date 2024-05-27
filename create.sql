CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
Car_ID int auto_increment primary key,
VIN VARCHAR(20), #secures VIN is a unique identifier dor cars
Manufacturer VARCHAR(60),
Model VARCHAR(60),
Year INT,
Color VARCHAR(15)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    Customer_ID int auto_increment primary key,
    Name VARCHAR(100),
    Phone_Number VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(50),
    State_Province VARCHAR(50),
    Country VARCHAR(30),
    Zip_Postal_Code VARCHAR(20)
);

DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    Salesperson_ID int auto_increment primary key,
    Name VARCHAR(100),
    Store VARCHAR(100)
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
    Invoice_Number int auto_increment primary key,
    Date DATE,
    Car_ID INT,
    Customer_ID INT,
    Salesperson_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID)
);

DESCRIBE Cars;
DESCRIBE Invoices;
DESCRIBE Customers;
DESCRIBE Salespersons;

SHOW TABLES;