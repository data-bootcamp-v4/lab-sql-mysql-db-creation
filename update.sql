-- seeding.sql — Challenge 3
USE lab_mysql;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE invoices;
TRUNCATE TABLE salespersons;
TRUNCATE TABLE customers;
TRUNCATE TABLE cars;
SET FOREIGN_KEY_CHECKS = 1;

-- Cars 
INSERT INTO cars (vin, manufacturer, model, `year`, color) VALUES
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

-- Customers
INSERT INTO customers
(cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
('10001','Pablo Picasso','+34 636 17 63 82',NULL,'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
('20001','Abraham Lincoln','+1 305 907 7086',NULL,'120 SW 8th St','Miami','Florida','United States','33130'),
('30001','Napoléon Bonaparte','+33 1 79 75 40 00',NULL,'40 Rue du Colisée','Paris','Île-de-France','France','75008');

-- Salespersons
INSERT INTO salespersons (staff_id, name, store) VALUES
('00001','Petey Cruiser','Madrid'),
('00002','Anna Sthesia','Barcelona'),
('00003','Paul Molive','Berlin'),
('00004','Gail Forcewind','Paris'),
('00005','Paige Turner','Miami'),
('00006','Bob Frapples','Mexico City'),
('00007','Walter Melon','Amsterdam'),
('00008','Shonda Leer','São Paulo');

-- Invoices
INSERT INTO invoices (invoice_number, `date`, car_id, customer_id, salesperson_id) VALUES
('852399038','2018-08-22',
  (SELECT id FROM cars        WHERE vin='3K096I98581DHSNUP' LIMIT 1),
  (SELECT id FROM customers   WHERE cust_id='10001'        LIMIT 1),
  (SELECT id FROM salespersons WHERE staff_id='00003'      LIMIT 1)),
('731166526','2018-12-31',
  (SELECT id FROM cars        WHERE vin='RKXVNNIHLVVZOUB4M' LIMIT 1),
  (SELECT id FROM customers   WHERE cust_id='30001'         LIMIT 1),
  (SELECT id FROM salespersons WHERE staff_id='00005'       LIMIT 1)),
('271135104','2019-01-22',
  (SELECT id FROM cars        WHERE vin='ZM8G7BEUQZ97IH46V' LIMIT 1),
  (SELECT id FROM customers   WHERE cust_id='20001'         LIMIT 1),
  (SELECT id FROM salespersons WHERE staff_id='00007'       LIMIT 1));

-- Quick checks
SELECT COUNT(*) AS n_cars FROM cars;
SELECT COUNT(*) AS n_customers FROM customers;
SELECT COUNT(*) AS n_salespersons FROM salespersons;
SELECT COUNT(*) AS n_invoices FROM invoices;

SELECT i.invoice_number, i.`date`,
       c.manufacturer, c.model, c.`year`,
       cust.cust_name, sp.name AS salesperson
FROM invoices i
JOIN cars c         ON i.car_id = c.id
JOIN customers cust ON i.customer_id = cust.id
JOIN salespersons sp ON i.salesperson_id = sp.id;
