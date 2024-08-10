
use lab_mysql;
-- Create Cars Table
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(50)
);

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(50),
    email VARCHAR(255),
    address TEXT,
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_postal_code VARCHAR(20)
);

-- Create Salespersons Table
CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255)
);


-- Create Invoices Table
CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    Car_VIN VARCHAR(17),
    CustomerID INT,
    StaffID INT
);