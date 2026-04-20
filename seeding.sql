USE lab_mysql;

## Seeding cars table
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

SELECT * FROM cars;

## Seeding customers table
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(1, 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

SELECT * FROM customers;

## Seeding salespersons table
INSERT INTO salespersons (staff_id, staff_name, store_location) VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Miami'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');

SELECT * FROM salespersons;

## Seeding invoices table
INSERT INTO invoices (invoice_number, invoice_date, vin, cust_id, staff_id) VALUES
(1, '2018-08-22', '3K096I98581DHSNUP', 1, 1),
(2, '2018-12-31', 'RKXVNNIHLVVZOUB4M', 2, 5),
(3, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 3, 2);

SELECT * FROM invoices;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM invoices;
DELETE FROM salespersons;
DELETE FROM customers;
DELETE FROM cars;

SET SQL_SAFE_UPDATES = 1;