-- Challenge 3, Seeding the Database
-- TO CONNECT AND POPULATE THE DATABASE lab_mysql --
USE `lab_mysql`;

-- Inserting Cars
INSERT INTO Cars (id, vin, manufacturer, model, year, color) 
VALUES 
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
(6, 'DAM41UDN3CHU2WVF6CC', 'Volvo', 'V60 Cross Country', '2019', 'Gray');
-- ID Nr. 5 had the same VIN, so 'CC' was added for Cross Country

-- Inserting Customers
INSERT INTO Customers (id, customer_id, customer_name, customer_phone_number, customer_email, customer_address, customer_city, customer_state, customer_country, customer_postal_code)
VALUES 
(1, 1, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 2, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Inserting Salespersons
INSERT INTO Salespersons (id, staff_id, salesperson_name, company_store)
VALUES 
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

-- Inserting Invoices
INSERT INTO Invoices (id, invoice_number, invoice_date, car_id, customer_id, staff_id)
VALUES  
(1, 852399038, '2018-08-22', 1, 1, 00003),  
(2, 73116652, '2018-12-31', 3, 3, 00005),  
(3, 271135104, '2019-01-22', 2, 2, 00007);
