CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- CARS
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

-- CUSTOMERS
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    name VARCHAR(100),
    phone VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zipcode VARCHAR(20)
);

-- SALESPERSONS
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10),
    name VARCHAR(100),
    store VARCHAR(50)
);

-- INVOICES
DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number BIGINT,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,

    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

USE lab_mysql;

-- CARS
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');

-- CUSTOMERS
INSERT INTO customers (cust_id, name, phone, email, address, city, state, country, zipcode) VALUES
(10001,'Pablo Picasso','+34 636 17 63 82',NULL,'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
(20001,'Abraham Lincoln','+1 305 907 7086',NULL,'120 SW 8th St','Miami','Florida','United States','33130'),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00',NULL,'40 Rue du Colisée','Paris','Île-de-France','France','75008');

-- SALESPERSONS
INSERT INTO salespersons (staff_id, name, store) VALUES
('00001','Petey Cruiser','Madrid'),
('00002','Anna Sthesia','Barcelona'),
('00003','Paul Molive','Berlin'),
('00004','Gail Forcewind','Paris'),
('00005','Paige Turner','Mimia'),
('00006','Bob Frapples','Mexico City'),
('00007','Walter Melon','Amsterdam'),
('00008','Shonda Leer','São Paulo');

-- INVOICES
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
(852399038,'2018-08-22',1,1,3),
(731166526,'2018-12-31',3,3,5),
(271135104,'2019-01-22',2,2,7);