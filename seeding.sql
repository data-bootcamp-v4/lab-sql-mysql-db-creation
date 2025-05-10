USE lab_mysql;
-- Use the database
USE lab_mysql;

-- Insert into customers table
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
  (10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
  (20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
  (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert into salespersons table
INSERT INTO salespersons (staff_id, name, store)
VALUES
  ('00001', 'Petey Cruiser', 'Madrid'),
  ('00002', 'Anna Sthesia', 'Barcelona'),
  ('00003', 'Paul Molive', 'Berlin'),
  ('00004', 'Gail Forcewind', 'Paris'),
  ('00005', 'Paige Turner', 'Mimia'),
  ('00006', 'Bob Frapples', 'Mexico City'),
  ('00007', 'Walter Melon', 'Amsterdam'),
  ('00008', 'Shonda Leer', 'São Paulo');

-- Insert into cars table
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
  ('1A4AABBC5KD501999', 'Toyota', 'Corolla', 2017, 'Blue'),
  ('1HGCM82633A123456', 'Honda', 'Civic', 2018, 'Red'),
  ('WP0ZZZ99ZTS392124', 'Porsche', '911', 2019, 'Black');

-- Insert into invoices table
INSERT INTO invoices (invoice_number, date, car, customer, salesperson)
VALUES
  (852399038, '2018-08-22', 1, 1, 3),
  (731166526, '2018-12-31', 3, 3, 5),
  (271135104, '2019-01-22', 2, 2, 7);

SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM cars;
SELECT * FROM invoices;
