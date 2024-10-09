CREATE DATABASE IF NOT EXISTS lab_mysql;

CREATE SCHEMA IF NOT EXISTS lab_mysql DEFAULT CHARACTER SET utf8 ;
USE lab_mysql ;

USE lab_mysql;

DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Invoices;

CREATE TABLE Salespersons (Staff_ID INT PRIMARY KEY, Name VARCHAR(45), Store VARCHAR(45));

CREATE TABLE Customers (Customer_ID INT PRIMARY KEY, Name VARCHAR(45), Phone_Number INT, Email VARCHAR(45), Address VARCHAR(45), Salespersons_Staff_ID INT, FOREIGN KEY (Salespersons_Staff_ID) REFERENCES Salespersons (Staff_ID));

CREATE TABLE Cars (VIN INT PRIMARY KEY, Manufacturer VARCHAR(45), Model VARCHAR(45), Year INT, Color VARCHAR(45), Customers_Customer_ID INT, FOREIGN KEY (Customers_Customer_ID) REFERENCES Customers (Customer_ID), Salespersons_Staff_ID INT, FOREIGN KEY (Salespersons_Staff_ID) REFERENCES Salespersons (Staff_ID));

CREATE TABLE Invoices (Invoice_Number INT PRIMARY KEY, Date DATE, Customers_Customer_ID INT, FOREIGN KEY (Customers_Customer_ID) REFERENCES Customers (Customer_ID), Salespersons_Staff_ID INT, FOREIGN KEY (Salespersons_Staff_ID) REFERENCES Salespersons (Staff_ID), Cars_VIN INT, FOREIGN KEY (Cars_VIN) REFERENCES Cars (VIN));

DESCRIBE Invoices;






