USE lab_mysql_db_creation;

-- -----------------------------------------------------
-- Disable safe update mode for this session
-- This allows DELETE statements without a WHERE clause
-- -----------------------------------------------------
SET SQL_SAFE_UPDATES = 0;

-- -----------------------------------------------------
-- Clean existing data to allow re-running the seed file
-- Tables are cleared in the correct order to respect
-- foreign key dependencies
-- -----------------------------------------------------
DELETE FROM invoices;
DELETE FROM salespersons;
DELETE FROM customers;
DELETE FROM cars;

-- -----------------------------
-- CARS
-- -----------------------------
-- Insert initial data into the cars table
-- Note: A duplicated VIN is intentionally included
-- to be removed later in the bonus delete challenge
INSERT INTO cars (id, vin, manufacturer, model, year, color) VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),                -- duplicated car (to be deleted)
(5, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');  -- car that remains

-- ---------------------------------
-- CUSTOMERS
-- -----------------------------------
-- Insert customer records with personal and contact information
INSERT INTO customers
(id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- ---------------------------
-- SALESPERSONS
-- -------------------------------
-- Insert sales staff data, including internal staff ID and store location
INSERT INTO salespersons (id, staff_id, name, store) VALUES
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

-- ----------------------------
-- INVOICES
-- ------------------------------
-- Insert sales transactions
-- Dates follow the YYYY-MM-DD format
-- car_id, customer_id and salesperson_id reference
-- the internal primary keys (id) of their respective tables
INSERT INTO invoices (id, invoice_number, invoice_date, car_id, customer_id, salesperson_id) VALUES
(1, '852399038', '2018-08-22', 1, 1, 3),
(2, '731166526', '2018-12-31', 3, 3, 5),
(3, '271135104', '2019-01-22', 2, 2, 7);

-- -----------------------------------------------------
-- Re-enable safe update mode
-- -----------------------------------------------------
SET SQL_SAFE_UPDATES = 1;

-- -------------
-- ----------------

-- Quick check table
-- -----------------------
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;



