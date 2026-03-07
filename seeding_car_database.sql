-- Challenge 3: seeding the infos.

USE car_database;

ALTER TABLE cars
MODIFY VIN VARCHAR(50);

ALTER TABLE cars MODIFY colour VARCHAR(20);

ALTER TABLE cars MODIFY car_model VARCHAR(50);

INSERT INTO cars(VIN, manufacturer, car_model, year, colour)
	VALUES  ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
        ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
        ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
        ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
        ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
        ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- customers 
ALTER TABLE customers  MODIFY phone_num VARCHAR(20);
INSERT INTO customers (customer_id, customer_name, phone_num, email, address, city, state, country, zip_code)
VALUES
  (10001, 'Pablo Picasso',       '+34 636 17 63 82',  NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid',        'Spain',         '28045'),
  (20001, 'Abraham Lincoln',     '+1 305 907 7086',   NULL, '120 SW 8th St',           'Miami',  'Florida',       'United States', '33130'),
  (30001, 'Napoléon Bonaparte',  '+33 1 79 75 40 00', NULL, '40 Rue du Colisée',       'Paris',  'Île-de-France', 'France',        '75008');

-- Salespersons
INSERT INTO salespersons (staff_id, salesperson_name, store_name)
VALUES
  ('00001', 'Petey Cruiser', 'Madrid'),
  ('00002', 'Anna Sthesia',  'Barcelona'),
  ('00003', 'Paul Molive',   'Berlin'),
  ('00004', 'Gail Forcewind','Paris'),
  ('00005', 'Paige Turner',  'Miami'),
  ('00006', 'Bob Frapples',  'Mexico City'),
  ('00007', 'Walter Melon',  'Amsterdam'),
  ('00008', 'Shonda Leer',   'São Paulo');

-- Invoices
ALTER Table invoices RENAME COLUMN salesperson_name TO salesperson_id;
ALTER Table invoices RENAME COLUMN car_model TO car;
INSERT INTO invoices (invoice_num, date, car, customer_id, salesperson_id)
VALUES
  (852399038, '2018-08-22', 1, 10001, 3),
  (731166526, '2018-12-31', 3, 30001, 5),
  (271135104, '2019-01-22', 2, 20001, 7);
           
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM invoices;
