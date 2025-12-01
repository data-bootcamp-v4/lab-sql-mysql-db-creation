USE lab_mysql;

-- Disable foreign key checks temporarily for easier data insertion (optional but can prevent order-of-insertion issues)
SET FOREIGN_KEY_CHECKS = 0; 

-- 1. Insert data into Cars table
INSERT INTO Cars (VIN, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6-DUP', 'Volvo', 'V60 Cross Country', 2019, 'Gray'); -- Changed VIN for the duplicate to be unique initially for the table constraint

-- 2. Insert data into Customers table
INSERT INTO Customers (cust_ID, name, phone, email, address, city, state_province, country, zip_postal_code)
VALUES
('010001', 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- 3. Insert data into Salespersons table
INSERT INTO Salespersons (staff_ID, name, store)
VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- 4. Insert data into Invoices table
-- Note: The car_id, customer_id, and salesperson_id here correspond to the auto-increment IDs from the previous INSERTs (assuming they start at 1).
INSERT INTO Invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES
('852399038', '2018-08-22', 1, 1, 3), -- Car 1 (Tiguan), Customer 1 (Picasso), Salesperson 3 (Paul Molive)
('22-08-2018', '2018-08-22', 4, 1, 5), -- Car 4 (RAV4), Customer 1 (Picasso), Salesperson 5 (Paige Turner)
('1327311665', '2018-12-31', 3, 3, 2), -- Car 3 (Fusion), Customer 3 (Bonaparte), Salesperson 2 (Anna Sthesia)
('2631-12-2018', '2018-12-31', 5, 2, 8), -- Car 5 (V60), Customer 2 (Lincoln), Salesperson 8 (Shonda Leer)
('353271135', '2019-01-22', 2, 2, 7), -- Car 2 (Rifter), Customer 2 (Lincoln), Salesperson 7 (Walter Melon)
('10422-01-2019', '2019-01-22', 6, 3, 4); -- Car 6 (V60 Cross Country), Customer 3 (Bonaparte), Salesperson 4 (Gail Forcewind)

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;
USE lab_mysql;

-- Enable safe update mode bypass for UPDATE/DELETE without key in WHERE clause
SET SQL_SAFE_UPDATES = 0; 

-- Update Pablo Picasso's email
UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

-- Update Abraham Lincoln's email
UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

-- Update Napoléon Bonaparte's email
UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;
USE lab_mysql;

-- Since car_id #4 is used in an invoice, we must first remove the dependent record in the Invoices table.
-- First, find and delete the invoice that uses car_id = 4.
DELETE FROM Invoices
WHERE car_id = 4;

-- Now, delete the car record with car_id = 4.
DELETE FROM Cars
WHERE car_id = 4;