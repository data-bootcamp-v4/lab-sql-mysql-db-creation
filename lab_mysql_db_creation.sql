CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- CREAR TABLAS
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars(
    Id INT AUTO_INCREMENT,
    VIN VARCHAR(80),
    Manufacturer VARCHAR(80),
    Model VARCHAR(80),
    Year YEAR,
    Color CHAR(15),
    PRIMARY KEY (Id)
);

CREATE TABLE customers(
    Id INT AUTO_INCREMENT,
    Customer_id CHAR(10),
    Name VARCHAR(80),
    Phone CHAR(15),
    Email VARCHAR(30),
    Address VARCHAR(80),
    City VARCHAR(30),
    State VARCHAR(30),
    Country VARCHAR(30),
    Zipcode CHAR(5),
    PRIMARY KEY (Id)
);

CREATE TABLE salespersons(
    Id INT AUTO_INCREMENT,
    Staff_id VARCHAR(5),
    Name VARCHAR(80),
    Store VARCHAR(80),
    PRIMARY KEY (Id)
);

CREATE TABLE invoices(
    Id INT AUTO_INCREMENT,
    Invoice_number VARCHAR(10),
    Date DATE,
    Car INT,
    Customer INT,
    Salespersons INT,
    PRIMARY KEY (Id),
    CONSTRAINT fk_car FOREIGN KEY (car) REFERENCES cars(Id),
    CONSTRAINT fk_customer FOREIGN KEY (customer) REFERENCES customers(Id),
    CONSTRAINT fk_salespersons FOREIGN KEY (salespersons) REFERENCES salespersons(Id)
);

-- INSERTAR DATOS
INSERT INTO cars(Id, VIN, Manufacturer, Model, Year, Color)
VALUES (1, '3k096198581dhsnup', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       (2, '3k093458581dhsdfr', 'SEAT', 'León', 2007, 'Red'),
       (3, '9n87613481crhnup', 'Mercedes', 'Clase C', 2025, 'Green'),
       (4, '6d09863581dvdrvp', 'Citroen', 'Clio', 2009, 'Grey'),
       (5, '3k075941581fgkput', 'Opel', 'Astra', 2000, 'White'),
       (6, '3c9671988423fkbyp', 'Hyundai', 'Getz', 2009, 'Black');

INSERT INTO customers (Id, Customer_id, Name, Phone, Email, Address, City, State, Country, Zipcode)
VALUES (1, 10001, 'Pablo Picasso', '+34636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       (2, 20001, 'Abraham Lincoln', '+13059077086', '-', '120 SW 8TH ST', 'Miami', 'Florida', 'United States', '33130'),
       (3, 30001, 'Napoleón Bonaparte', '+33179754000', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (Id, Staff_id, Name, Store)
VALUES (1, '00001', 'Peter Cruiser', 'Madrid'),
       (2, '00002', 'Anna Sthesia', 'Barcelona'),
       (3, '00003', 'Paul Molive', 'Berlin'),
       (4, '00004', 'Gail Forcewind', 'Paris'),
       (5, '00005', 'Paige Turner', 'Miami'),
       (6, '00006', 'Bob Frapples', 'Mexico City'),
       (7, '00007', 'Walter Melon', 'Amsterdam'),
       (8, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (Id, Invoice_number, Date, Car, Customer, Salespersons)
VALUES (1, '852399038', '2018-08-22', 1, 1, 3),
       (2, '731166526', '2018-12-31', 3, 3, 5),
       (3, '271135104', '2019-01-22', 2, 2, 7);
       
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

UPDATE customers
SET Email = 'ppicasso@gmail.com' 
WHERE Name= 'Pablo Picasso';

UPDATE customers
SET Email = 'lincoln@us.gov' 
WHERE Name= 'Abraham Lincoln';

UPDATE customers
SET Email = 'hello@napoleon.me' 
WHERE Name= 'Napoléon Bonaparte';

SELECT * FROM customers;

DELETE FROM cars 
WHERE Id = 4;

SELECT * FROM cars;