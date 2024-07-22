CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
		VIN VARCHAR(20) NOT NULL, 
        Manufacturer VARCHAR(20) NOT NULL, 
        Model VARCHAR(20) NOT NULL, 
        Year INT NOT NULL, 
        Color VARCHAR(20) NOT NULL);
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
		Customer_ID INT NOT NULL, 
        name VARCHAR(20) NOT NULL, 
        email VARCHAR(20) NOT NULL, 
        adress VARCHAR(20) NULL, 
        city VARCHAR(20) NULL, 
        state_province VARCHAR(20) NULL,
        country VARCHAR(20) NULL, 
        zip_code INT NOT NULL);
DROP TABLE IF EXISTS Salesperson;
CREATE TABLE Salesperson (
Staff_ID INT NOT NULL,
 name VARCHAR(20) NOT NULL, 
 store VARCHAR(20) NOT NULL);
DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
		Invoice_nr INT NOT NULL, 
        date DATE NOT NULL, 
        car VARCHAR(20) NOT NULL, 
        customer VARCHAR(20) NOT NULL,
        salesperson VARCHAR(20) NULL);
