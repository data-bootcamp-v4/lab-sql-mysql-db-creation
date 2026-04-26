USE My_db;

-- SEED CARS
INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES
  ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
  ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
  ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
  ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
  ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

-- SEED CUSTOMERS
INSERT INTO customers (customer_id, name, phone, email, address, city, state, country, zip)
VALUES
  ('10001', 'Pablo Picasso',     '+34 636 17 63 82', 'ppicasso@gmail.com',   'Paseo de la Chopera 14', 'Madrid',    'Madrid',   'Spain',         '28045'),
  ('10002', 'Abraham Lincoln',   '+1 305 907 7086',  'lincoln@gmail.com',    '120 SW 8th St',           'Miami',     'Florida',  'United States', '33130'),
  ('10003', 'Napoléon Bonaparte','+33 1 79 75 40 00','napoleon@gmail.com',   '40 Rue du Colisée',       'Paris',     'Île-de-France', 'France',   '75008');

-- SEED SALESPERSONS
INSERT INTO salespersons (staff_id, name, store)
VALUES
  ('00001', 'Petey Cruiser',  'Madrid'),
  ('00002', 'Anna Sthesia',   'Barcelona'),
  ('00003', 'Paul Molive',    'Berlin'),
  ('00004', 'Gail Forcewind', 'Paris'),
  ('00005', 'Paige Turner',   'Mimia'),
  ('00006', 'Bob Frapples',   'Mexico City'),
  ('00007', 'Walter Melon',   'Amsterdam'),
  ('00008', 'Shonda Leer',    'São Paulo');

-- SEED INVOICES
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES
  ('INV-001', '2018-08-22', 1, 1, 3),
  ('INV-002', '2018-12-31', 2, 2, 5),
  ('INV-003', '2019-01-22', 3, 3, 8);