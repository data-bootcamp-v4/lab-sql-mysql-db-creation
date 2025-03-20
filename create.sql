-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Step 2: Create the tables

-- Drop and create the Cars table
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    Car_ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL UNIQUE,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year_Y YEAR NOT NULL,
    Color VARCHAR(20) NOT NULL
);

-- Drop and create the Customers table
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Address VARCHAR(300) NOT NULL,
    City VARCHAR(50) NOT NULL,
    StateProvince VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    ZipPostalCode VARCHAR(20) NOT NULL
);

-- Drop and create the Salespersons table
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    Salesperson_ID INT AUTO_INCREMENT PRIMARY KEY,
    Salesperson_Name VARCHAR(100) NOT NULL,
    Store VARCHAR(100) NOT NULL
);

-- Drop and create the Invoices table
DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    Invoice_ID INT AUTO_INCREMENT PRIMARY KEY,
	Date_D DATE NOT NULL,
    Car_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Salesperson_ID INT NOT NULL,
    FOREIGN KEY (Car_ID) REFERENCES cars(Car_ID) ON DELETE CASCADE,
    FOREIGN KEY (Customer_ID) REFERENCES customers(Customer_ID) ON DELETE CASCADE,
    FOREIGN KEY (Salesperson_ID) REFERENCES salespersons(Salesperson_ID) ON DELETE CASCADE
);
