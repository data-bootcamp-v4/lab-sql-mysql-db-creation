CREATE DATABASE IF NOT EXISTS lab_mysql1;

USE lab_mysql1;

DROP TABLE IF EXISTS cars;

CREATE TABLE CARS (
VIN VARCHAR(17) PRIMARY KEY,
manufacturer VARCHAR(100) NOT NULL,
model VARCHAR(100) NOT NULL,
año INT NOT NULL, -- Cambié DATE a INT, ya que "año" es un número
color VARCHAR(50)NOT NULL, -- Especifica la longitud máxima de "VARCHAR"
company VARCHAR(50)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE Customers (
customer_id INT PRIMARY KEY auto_increment,
name VARCHAR(100) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
address VARCHAR(255) NOT NULL,
city VARCHAR(100) NOT NULL,
state_province VARCHAR(100) NOT NULL,
country VARCHAR(100),
zip_postal_code VARCHAR(20)
);

DROP TABLE IF EXISTS salesperson;

CREATE TABLE salesperson(
staff_id INT PRIMARY KEY auto_increment,
name VARCHAR(100) NOT NULL, 
company_store VARCHAR(100) NOT NULL 
);

DROP TABLE IF EXISTS invoices; 
CREATE TABLE invoices(
invoice_number INT PRIMARY KEY,
date DATE,
car VARCHAR(17) NOT NULL , -- Foreign Key que referencia a la tabla CARS
customer INT NOT NULL, -- Foreign Key que referencia a la tabla Customers
salesperson INT); -- Foreign Key que referencia a la tabla Salesperson

INSERT INTO Cars (VIN, manufacturer, model, año, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO Customers (customer_id, name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salesperson (staff_id, name, company_store)
VALUES
(00001,	'Petey Cruiser','Madrid')
(00002,	'Anna Sthesia', 'Barcelona')
(00003,	'Paul Molive', 'Berlin')
(00004,	'Gail Forcewind','Paris')
(00005,	'Paige Turner', 'Mimia')
(00006,	'Bob Frapples', 'Mexico City')
(00007,	'Walter Melon', 'Amsterdam')
(00008,	'Shonda Leer', 'São Paulo')
(00009,'Greta','Barcelona');