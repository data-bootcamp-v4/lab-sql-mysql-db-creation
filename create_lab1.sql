SHOW DATABASES;
DROP DATABASE car_dealership;
CREATE DATABASE car_dealership;
USE car_dealership;

CREATE TABLE Cars (
car_id INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(20),
manufacturer VARCHAR(45),
year YEAR, 
model VARCHAR (40),
color VARCHAR(30)
);

CREATE TABLE Customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_code VARCHAR(20),
  name VARCHAR(100),
  phone VARCHAR(20),
  email VARCHAR(100),
  address VARCHAR(200),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  zip VARCHAR(20)
);

CREATE TABLE Salespersons (
  salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
  staff_code VARCHAR(20),
  name VARCHAR(100),
  store VARCHAR(100)
);


CREATE TABLE Invoices (
  invoice_id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number VARCHAR(20),
  date DATE,
  car_id INT,
  customer_id INT,
  salesperson_id INT,
  FOREIGN KEY (car_id) REFERENCES Cars(car_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);