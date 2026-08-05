CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

INSERT INTO Cars (id, VIN, Manufacturer, Model, Year, Color, Invoice_id)
 VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', '01'),
        (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', '03'),
        (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', '02'),
        (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', '04'),
        (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', '05');
 
USE lab_mysql;
INSERT INTO Customers (Customer_id, Custumer_name, Phone, Address, email, city, state, country, zip_code)
VALUES (1001, 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera 14',  '', 'Madrid', 'Madrid', 'Spain', 28045),
       (2001, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St',  '', 'Miami', 'Florida', 'United States', 33130),
       (3001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée',  '', 'Paris', 'Île-de-France','France', 75008);
 
USE lab_mysql; 
INSERT INTO sales_person (id, Staff_id, name, Store)
VALUES (1, 001, 'Peter Cruiser', 'Madrid'),
       (2, 002, 'Anna Sthesia', 'Barcelona'),
       (3, 003, 'Paul Molive', 'Berlin'),
	   (4, 004, 'Gail Forcewind', 'Paris'),
       (5, 005, 'Paige Turner', 'Mimia'),
       (6, 006, 'Bob Frapples', 'Mexico City'),
       (7, 007, 'Walter Melon', 'Amsterdam'),
       (8, 008, 'Shonda Leer', 'Sao Paulo');
       
USE lab_mysql; 
INSERT INTO invoices (id, invoice_id, Date, Car_id, Customer_id, Staff_id)
VALUES (1, 852399038, 22-08-2018, 1, 1, 3),
       (2, 731166526, 31-12-2018, 3, 3, 5),
       (3, 271135104, 22-01-2019, 2, 2, 7);
	 


       
       
       
       
  
  
 