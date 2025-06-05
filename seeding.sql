USE lab_mysql;

SELECT car_id, vin FROM cars;
SELECT customer_id, name FROM customers;
SELECT salesperson_id, name FROM salespersons;


INSERT INTO cars (vin, manufacturer, model, year, color, price) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 27000.00),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 25000.00),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 23000.00),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 26000.00),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 29000.00),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 31000.00);


INSERT INTO customers (
  name, phone, email, address, city, state_province, country, zip_postal_code
) VALUES
('Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO salespersons (name, store) VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Mimia'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');

INSERT INTO invoices (invoice_date, car_id, customer_id, salesperson_id, final_price) VALUES
('2018-08-22', 7, 1, 3, 26500.00),
('2018-12-31', 9, 3, 5, 22000.00),
('2019-01-22', 11, 2, 7, 24500.00);

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

SELECT car_id, vin FROM cars;
SELECT customer_id, name FROM customers;
SELECT salesperson_id, name FROM salespersons;
