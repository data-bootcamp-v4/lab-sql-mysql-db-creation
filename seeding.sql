INSERT INTO cars (vin, manufacturer, model, year_, color)
VALUES 
  ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
  ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
  ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
  ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
  ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
  ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO customers (cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
  ('Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
  ('Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
  ('Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

INSERT INTO salespersons (name, store)
VALUES
  ('Petey Cruiser', 'Madrid'),
  ('Anna Sthesia', 'Barcelona'),
  ('Paul Molive', 'Berlin'),
  ('Gail Forcewind', 'Paris'),
  ('Paige Turner', 'Miami'),
  ('Bob Frapples', 'Mexico City'),
  ('Walter Melon', 'Amsterdam'),
  ('Shonda Leer', 'São Paulo');

INSERT INTO invoices (invoices_number, date, car_id, customer_id, salesperson_id)
VALUES
  ('852399038', '2018-08-22', 1, 1, 3),
  ('731166526', '2018-12-31', 3, 3, 5),
  ('271135104', '2019-01-22', 2, 2, 7);
