USE lab_mysql;

ALTER TABLE cars MODIFY COLUMN car_VIN VARCHAR(20);
ALTER TABLE cars MODIFY COLUMN year INT;
DESCRIBE cars;

INSERT INTO cars (car_VIN, manufacturer, model, year, color)
VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'), 
('HKNDGS7CU31E9Z7JW', 'Toyota', 'Rav4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('JLH87XK3Q72D9PUWF', 'Volvo', 'V60_Cross_Country', 2019, 'Gray'); 

SELECT * FROM cars;

ALTER TABLE invoices MODIFY COLUMN car_VIN VARCHAR(20);
INSERT INTO invoices (invoice_number, dates, car_VIN, customer_ID, salesperson_ID)
VALUES 
('852399038', '2018-08-22', '3K096I98581DHSNUP', 1, 3),
('731166526', '2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5),
('271135104', '2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7);

SELECT * FROM invoices;

DESCRIBE customers;
ALTER TABLE customers MODIFY COLUMN phone_number VARCHAR(50);
ALTER TABLE customers MODIFY COLUMN address VARCHAR(300);
INSERT INTO customers (customer_ID, name, phone_number, email, address, state, country, zip)
VALUES 
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14','Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Île-de-France', 'France', '75008');

SELECT * FROM customers;  

INSERT INTO salesperson (salesperson_ID, name, store)
VALUES 
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Miami'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');
SELECT * FROM salesperson


