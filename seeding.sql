ALTER TABLE cars MODIFY price DECIMAL(10, 2);
ALTER TABLE invoices MODIFY total_price DECIMAL(10, 2);

INSERT INTO cars (VIN, manufacturer, model, year, color, price) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 26999.99),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 22999.99),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 23999.99),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 27999.99),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 31999.99),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 32999.99);

DESCRIBE cars;

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state_province, country, zip_code) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (staff_id, name, store) VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');
       
INSERT INTO invoices (invoice_number, date, car_VIN, customer_id, staff_ID, total_price) VALUES
(852399038, '2018-08-22', '3K096I98581DHSNUP', 10001, 3, 26999.99),
(731166526, '2018-12-31', 'RKXVNNIHLVVZOUB4M', 30001, 5, 23999.99),
(271135104, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 20001, 7, 22999.99);
       
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM customers;