-- Challenge 2 - Create the Database and Tables

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE Cars (
            VIN VARCHAR(20), 
            Manufacturer VARCHAR(20),
            Model VARCHAR(20),
            Year DATE, 
            Color VARCHAR(20),
            Branch_store VARCHAR(20));

CREATE TABLE Customers (
            CustomerID VARCHAR(20), 
            Name VARCHAR(20),
            Phone_nber VARCHAR(20),
            Email VARCHAR(20),
            Address VARCHAR(20),
            City VARCHAR(20),
            State VARCHAR(20),
            Country VARCHAR(20),
            Postal_code VARCHAR(20),
            VIN VARCHAR(20));
            
CREATE TABLE Salespersons (
            StaffID VARCHAR(20), 
            Name VARCHAR(20),
            Branch_store VARCHAR(20));
            
CREATE TABLE Invoices (
            Invoice_number VARCHAR(20), 
            Date DATE,
            CustomerID VARCHAR(20),
            Salesperson_name VARCHAR(20),
            StaffID VARCHAR(20),
            Branch_store VARCHAR(20));   
            
            

            
