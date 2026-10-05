USE lab_mysql;

-- 1) CARS
-- id is left out: AUTO_INCREMENT numbers the rows 1, 2, 3...
-- The sample data repeats the VIN DAM41UDN3CHU2WVF6, which UNIQUE would reject,
-- so the last car gets a different VIN.
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- 2) CUSTOMERS
-- The column names follow our table, not the sample (cust_name -> name, etc.).
-- "-" means no email, so it is stored as NULL.
-- With id left out, the customers get ids 1, 2, 3, which matches the invoices below.
INSERT INTO customers (customer_id, name, phone, email, address, city, state, country, zip_code)
VALUES (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       (20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- 3) SALESPERSONS
-- staff_id is an INT, so 00001 is stored as 1.
-- "Mimia" in the sample is a typo for Miami.
INSERT INTO salespersons (staff_id, name, store)
VALUES (1, 'Petey Cruiser', 'Madrid'),
       (2, 'Anna Sthesia', 'Barcelona'),
       (3, 'Paul Molive', 'Berlin'),
       (4, 'Gail Forcewind', 'Paris'),
       (5, 'Paige Turner', 'Miami'),
       (6, 'Bob Frapples', 'Mexico City'),
       (7, 'Walter Melon', 'Amsterdam'),
       (8, 'Shonda Leer', 'São Paulo');

-- 4) INVOICES (filled in last, because it points to the other three tables)
-- Dates are rewritten from DD-MM-YYYY to MySQL's 'YYYY-MM-DD'.
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES (852399038, '2018-08-22', 1, 1, 3),
       (731166526, '2018-12-31', 3, 3, 5),
       (271135104, '2019-01-22', 2, 2, 7);
