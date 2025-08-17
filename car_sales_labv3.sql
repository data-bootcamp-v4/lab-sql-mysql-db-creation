CREATE DATABASE IF NOT EXISTS car_sales_lab2;

USE car_sales_lab2;

CREATE TABLE colours (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Colour_ID INT UNIQUE NOT NULL,
    Colour_Name VARCHAR(50) NOT NULL
);

CREATE TABLE stores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Store_ID VARCHAR(10) UNIQUE NOT NULL,
    City VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL
);

CREATE TABLE payment_methods (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Payment_ID VARCHAR(10) UNIQUE NOT NULL,
    Payment_Name VARCHAR(50) NOT NULL
);

CREATE TABLE cars (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) UNIQUE NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Registration_Year YEAR NOT NULL,
    Colour_ID INT NOT NULL,
    FOREIGN KEY (Colour_ID) REFERENCES colours(ID)
);

CREATE TABLE customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID VARCHAR(20) UNIQUE NOT NULL,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone_Number VARCHAR(50) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State_Province VARCHAR(100) NOT NULL,
    ZIP_PostalCode VARCHAR(20) NOT NULL,
    Country VARCHAR(100) NOT NULL
   );

CREATE TABLE salespersons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Staff_ID VARCHAR(20) UNIQUE NOT NULL,
    Staff_Name VARCHAR(100) NOT NULL,
    Store_ID INT NOT NULL,
    FOREIGN KEY (Store_ID) REFERENCES stores(ID)
);

CREATE TABLE orders (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_Num VARCHAR(20) UNIQUE NOT NULL,
    Order_Date DATE NOT NULL,
    Customer_ID INT NOT NULL,   
    Store_ID INT NOT NULL,      
    Invoice_Num VARCHAR(20) NOT NULL,
    Car_ID INT NOT NULL,        
    Quantity INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES customers(ID),
    FOREIGN KEY (Store_ID) REFERENCES stores(ID),
    FOREIGN KEY (Car_ID) REFERENCES cars(ID)
);

CREATE TABLE invoices (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Invoice_Num VARCHAR(20) UNIQUE NOT NULL,
    Invoice_Date DATE NOT NULL,
    Car_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Staff_ID INT NOT NULL,
    Payment_ID INT NOT NULL,
    FOREIGN KEY (Car_ID) REFERENCES cars(ID),
    FOREIGN KEY (Customer_ID) REFERENCES customers(ID),
    FOREIGN KEY (Staff_ID) REFERENCES salespersons(ID),
    FOREIGN KEY (Payment_ID) REFERENCES payment_methods(ID)
);


INSERT INTO colours (Colour_ID, Colour_Name) VALUES
('001', 'Blue'),
('002', 'Red'),
('003', 'White'),
('004', 'Silver'),
('005', 'Gray');

INSERT INTO stores (Store_ID, City, Country) VALUES
('001', 'Madrid', 'Spain'),
('002', 'Barcelona', 'Spain'),
('003', 'Berlin', 'Germany'),
('004', 'Paris', 'France'),
('005', 'Miami', 'United States'),
('006', 'Mexico City', 'Mexico'),
('007', 'Amsterdam', 'Netherlands'),
('008', 'São Paulo', 'Brazil');

INSERT INTO payment_methods (Payment_ID, Payment_Name) VALUES
('01', 'Cash'),
('02', 'Bank Transfer'),
('03', 'Financing'),
('04', 'Certified check'),
('05', 'Debit Card'); 

INSERT INTO customers (Customer_ID, Customer_Name, Email, Phone_Number, Address, City, State_Province, ZIP_PostalCode, Country) VALUES
('00001', 'Pablo Picasso', NULL, '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', '28045', 'Spain'),
('00002', 'Abraham Lincoln', NULL, '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', '33010', 'United States'),
('00003', 'Napoléon Bonaparte', NULL, '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', '75008', 'France');

INSERT INTO cars (VIN, Manufacturer, Model, Registration_Year, Colour_ID) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 1),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 2),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 3),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'Fusion', 2018, 4),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2018, 5),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2018, 5);

INSERT INTO salespersons (Staff_ID, Staff_Name, Store_ID) VALUES
('00001', 'Petey Cruiser', 1),
('00002', 'Anna Sthesia', 2),
('00003', 'Paul Molive', 3),
('00004', 'Gail Forcewind', 4),
('00005', 'Paige Turner', 5),
('00006', 'Bob Frapples', 6),
('00007', 'Walter Melon', 7),
('00008', 'Shonda Leer', 8);

INSERT INTO orders (Order_Num, Order_Date, Customer_ID, Store_ID, Invoice_Num, Car_ID, Quantity) VALUES
('00001', '2018-08-22', 1, 2, '852399038', 1, 1),
('00002', '2018-12-31', 2, 5, '731166526', 3, 1),
('00003', '2019-01-22', 3, 4, '271135104', 2, 1);

INSERT INTO invoices (Invoice_Num, Invoice_Date, Car_ID, Customer_ID, Staff_ID, Payment_ID) VALUES
('852399038', '2018-08-22', 1, 1, 3, 1),
('731166526', '2018-12-31', 3, 3, 5, 2),
('271135104', '2019-01-22', 2, 2, 7, 3);
