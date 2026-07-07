-- Create DB
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Create Table 1 CAR 

DROP TABLE IF EXISTS cars;
Create Table Cars (ID int Primary key, 
						Vin varchar(50) Unique NOT NULL,
                        Manufactuer varchar(50) NOT NULL,
                        Model varchar(50) NOT NULL,
                   year_Details year NOT NULL,
                   Color varchar(50)NOT NULL
                   ); 
                   
                   
                   -- Create Table 1: Cars 
DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    ID INT PRIMARY KEY, 
    Vin VARCHAR(50) NOT NULL,
    Manufactuer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    year_Details INT NOT NULL, -- Changed from YEAR to INT for simplicity
    Color VARCHAR(50) NOT NULL
); 
                   
                   
	Select * from Cars; 
    
  -- Create Table 2 Customers
  
 Drop Table if exists Customers;
 
 CREATE TABLE customers (
    id INT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100) DEFAULT 'not provided', 
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Create Table 3

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

SELECT * FROM salespersons;

-- create Table 3 

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT PRIMARY KEY,
    invoice_number VARCHAR(50) NOT NULL,
    date VARCHAR(20) NOT NULL, 
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL
);

SELECT * FROM invoices;

-- Insert Data into Table 1 Cars

Select * From Cars;

Insert INTO Cars (ID, Vin, Manufactuer, Model, year_Details, Color)
VALUES 
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Insert data into Customers

Select * From customers;
INSERT INTO customers (id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES 
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', DEFAULT, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', DEFAULT, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', DEFAULT, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

---- Insert data into Salespersons
select * from salespersons;
INSERT INTO salespersons (id, staff_id, name, store)
VALUES 
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

-- Insert data into Invoices
select * From invoices;
INSERT INTO invoices (id, invoice_number, date, car_id, customer_id, salesperson_id)
VALUES 
(1, '852399038', '22-08-2018', 1, 1, 3),
(2, '731166526', '31-12-2018', 3, 3, 5),
(3, '271135104', '22-01-2019', 2, 2, 7);

-- Establish the Relationship

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_car
FOREIGN KEY (car_id) REFERENCES Cars(ID);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_customer
FOREIGN KEY (customer_id) REFERENCES customers(id);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_salesperson
FOREIGN KEY (salesperson_id) REFERENCES salespersons(id);

