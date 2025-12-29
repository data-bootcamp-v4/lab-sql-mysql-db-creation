-- seeding.sql
USE lab_mysql;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE invoices;
TRUNCATE TABLE cars;
TRUNCATE TABLE customers;
TRUNCATE TABLE sales_person;
SET FOREIGN_KEY_CHECKS = 1;

-- Customers
INSERT INTO customers
(customer_id, customer_name, customer_phone, customer_email, customer_address, customer_city, customer_state, customer_country, customer_zipcode)
VALUES
(1, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Sales person
INSERT INTO sales_person (staff_id, name, store) VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');

-- Cars
INSERT INTO cars (car_id, vin, manufacturer, model, year, color) VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),                 
(5, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');    

-- Invoices
-- Dates converted to YYYY-MM-DD 
INSERT INTO invoices (invoice_id, car_id, customer_id, staff_id, invoice_nr, invoice_date) VALUES
(1, 1, 1, 3, 852399038, '2018-08-22'),
(2, 3, 3, 5, 731166526, '2018-12-31'),
(3, 2, 2, 7, 271135104, '2019-01-22');
