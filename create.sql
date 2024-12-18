CREATE DATABASE CarDealership;
USE CarDealership;

CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin TEXT NOT NULL,
    UNIQUE (vin(20)),
    manufacturer TEXT,
    model TEXT,
    Year INT,
    color TEXT
);
    
  CREATE TABLE Customers (
    customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    phone TEXT,
    email TEXT,
    address TEXT,
    city TEXT,
    state_province TEXT,
    country TEXT,
    zip_postal_code TEXT
);

CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    store TEXT
);

CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number TEXT NOT NULL,
    UNIQUE (invoice_number(20)),
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);
