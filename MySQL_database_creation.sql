-- Create  database and  table 
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop old tables if exist
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Cars table
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

-- Customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(20)
);

-- Salespersons table
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

-- Invoices table
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number BIGINT NOT NULL,
    date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

-- challenge 3 seedomg  the database
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('309','Volkswagen','Tiguan',2019,'Blue'),
('348','Peugeot','Rifter',2019,'Red'),
('144','Ford','Fusion',2018,'White'),
('345','Toyota','RAV4',2018,'Silver'),
('234','Volvo','V60',2019,'Gray'),
('456','Volvo','V60 Cross Country',2019,'Gray');

-- Insert customers
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(10001,'Pablo Picasso','+49 636 17 63 82',NULL,'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
(20001,'Abraham Lincoln','+49 305 907 7086',NULL,'120 SW 8th St','Miami','Florida','United States','33130'),
(30001,'Napoléon Bonaparte','+49 1 79 75 40 00',NULL,'40 Rue du Colisée','Paris','Île-de-France','France','75008');

-- Insert salespersons
INSERT INTO salespersons (staff_id, name, store) VALUES
(00001,'Petey Cruiser','Madrid'),
(00002,'Anna Sthesia','Barcelona'),
(00003,'Paul Molive','Berlin'),
(00004,'Gail Forcewind','Paris'),
(00005,'Paige Turner','Mimia'),
(00006,'Bob Frapples','Mexico City'),
(00007,'Walter Melon','Amsterdam'),
(00008,'Shonda Leer','São Paulo');

-- Insert invoices
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
(852399038,'2018-08-22',1,1,3),
(731166526,'2018-12-31',3,3,5),
(271135104,'2019-01-22',2,2,7);