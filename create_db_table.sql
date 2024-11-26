CREATE database car_dealership;
-- DROP database car_dealership;
USE car_dealership;

-- Create Cars table
CREATE TABLE Cars(
car_id INT AUTO_INCREMENT PRIMARY KEY,
VIN CHAR(50),
manufacturer VARCHAR(50),
model VARCHAR(50),
year INT,
color VARCHAR(50)
);

-- Create Customers table
CREATE TABLE Customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
cust_id INT,
cust_name VARCHAR(50),
cust_phone VARCHAR(50),
cust_email VARCHAR(50),
cust_address VARCHAR(50),
cust_city VARCHAR(50),
cust_state VARCHAR(50),
cust_country VARCHAR(20),
cust_zipcode INT
);

-- Create Salesperson table
CREATE TABLE Salespersons(
personal_id INT AUTO_INCREMENT PRIMARY KEY,
staff_id INT,
name VARCHAR(50),
store VARCHAR(50)
);

-- Create Invoices table
CREATE TABLE Invoices(
invoice_id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number INT,
date DATE,
car_id INT, 
FOREIGN KEY (car_id) REFERENCES Cars(car_id),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
personal_id INT,
FOREIGN KEY (personal_id) REFERENCES Salespersons(personal_id)
);