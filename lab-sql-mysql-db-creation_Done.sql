
DROP DATABASE IF EXISTS CarSalesDB;
CREATE DATABASE CarSalesDB;
USE CarSalesDB;


CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(50) NOT NULL
);


CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state_province VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    zip_postal_code VARCHAR(20) NOT NULL
);


CREATE TABLE Salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);

CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) UNIQUE NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id) ON DELETE CASCADE
);



USE CarSalesDB;


INSERT INTO Cars (vin, manufacturer, model, year, color)
VALUES 
('1HGCM82633A123456', 'Toyota', 'Camry', 2022, 'Blue'),
('2T1BURHE6JC023456', 'Honda', 'Civic', 2023, 'Red'),
('3FA6P0H73JR123456', 'Ford', 'Fusion', 2021, 'Black');


INSERT INTO Customers (name, phone, email, address, city, state_province, country, zip_postal_code)
VALUES 
('John Doe', '123-456-7890', 'johndoe@example.com', '123 Main St', 'New York', 'NY', 'USA', '10001'),
('Jane Smith', '234-567-8901', 'janesmith@example.com', '456 Oak Ave', 'Los Angeles', 'CA', 'USA', '90001'),
('Alice Johnson', '345-678-9012', 'alicejohnson@example.com', '789 Pine Rd', 'Chicago', 'IL', 'USA', '60601');


INSERT INTO Salespersons (name, store)
VALUES 
('Mike Brown', 'Downtown Store'),
('Sarah White', 'Uptown Store'),
('James Black', 'Suburban Store');


INSERT INTO Invoices (invoice_number, date, car_id, customer_id, staff_id)
VALUES 
('INV001', '2024-02-01', 1, 1, 1),
('INV002', '2024-02-02', 2, 2, 2),
('INV003', '2024-02-03', 3, 3, 3);

SELECT * FROM Cars;
SELECT * FROM Customers;
SELECT * FROM Salespersons;
SELECT * FROM Invoices;



SET SQL_SAFE_UPDATES = 0;
USE CarSalesDB;


UPDATE Customers SET email = 'ppicasso@gmail.com' WHERE name = 'Pablo Picasso';
UPDATE Customers SET email = 'lincoln@us.gov' WHERE name = 'Abraham Lincoln';
UPDATE Customers SET email = 'hello@napoleon.me' WHERE name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;
SELECT name, email FROM Customers WHERE name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

