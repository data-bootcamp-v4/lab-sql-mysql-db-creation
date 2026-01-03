-- 1. Select the database
USE lab_mysql;

-- 2. Populate 'cars' table
-- Data source: Lab instructions page 6-7 [cite: 194, 196]
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('3K096198581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- 3. Populate 'customers' table
-- Data source: Lab instructions page 7 [cite: 198]
INSERT INTO customers (cust_id, name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES 
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- 4. Populate 'salespersons' table
-- Data source: Lab instructions page 7-8 [cite: 200, 201]
INSERT INTO salespersons (staff_id, name, store)
VALUES 
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Miami'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- 5. Populate 'invoices' table
-- Data source: Lab instructions page 8 [cite: 202]
-- Note: car, customer, and salesperson refer to the AUTO_INCREMENT IDs (1, 2, 3...)
INSERT INTO invoices (invoice_number, date, car, customer, salesperson)
VALUES 
('852399038', '2018-08-22', 1, 1, 3),
('731166526', '2018-12-31', 3, 3, 5),
('271135104', '2019-01-22', 2, 2, 7);

