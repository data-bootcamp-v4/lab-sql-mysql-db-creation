 CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE Cars (
    id INT,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(50)
);

DROP TABLE IF EXISTS Cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(50)
);		

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(50),
    cust_phone  INT,
    cust_email VARCHAR(50),
    cust_address VARCHAR(50),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode INT
);	

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id  INT,
	name VARCHAR(50),
    store VARCHAR(50)
);	

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number  INT,
	date INT,
	car INT,
    customer INT,
	salesperson INT
);	

INSERT INTO Cars (id, vin, manufacturer, model, year, color) VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO Salespersons (id, staff_id, name, store) VALUES
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO Invoices (id, invoice_number, date, car, customer, salesperson) VALUES
(1, '852399038', '2018-08-22', 1, 1, 3),
(2, '731166526', '2018-12-31', 3, 3, 5),
(3, '271135104', '2019-01-22', 2, 2, 7);

INSERT INTO Invoices (id, invoice_number, date, car, customer, salesperson) VALUES
(1, '852399038', '2018-08-22', 1, 1, 3),
(2, '731166526', '2018-12-31', 3, 3, 5),
(3, '271135104', '2019-01-22', 2, 2, 7);

INSERT INTO Customers (id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(0, '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid'),
(1, '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'Spain', '28045'),
(2, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');