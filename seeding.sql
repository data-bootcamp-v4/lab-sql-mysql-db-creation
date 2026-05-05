USE lab_mysql;

INSERT INTO cars (car_id, vin, manufacturer, model, color, year)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 'Blue', '2019-01-01'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 'Red', '2019-01-01'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 'White', '2018-01-01'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 'Silver', '2018-01-01'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Gray', '2019-01-01'),
(6, 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 'Gray', '2019-01-01');

INSERT INTO customers (
  customer_id,
  name,
  `phone-number`,
  email,
  address,
  city,
  state,
  country,
  postal_code
)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (staff_id, name, store)
VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (
  invoice_id,
  date,
  car_id,
  customer_id,
  salesperson_id
)
VALUES
(1, '2018-08-22', 1, 10001, 3),
(2, '2018-12-31', 3, 30001, 5),
(3, '2019-01-22', 2, 20001, 7);