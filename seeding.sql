USE lab_mysql;
INSERT INTO cars(id, VIN, manufacturer, model, year, color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen','Tiguan', 2019, 'Blue')

INSERT INTO cars (id, VIN, manufacturer, model, year, color)
VALUES 
(2, 'VW712871239871234', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'XM123984712938741', 'Toyota', 'RAV4', 2018, 'Silver'),
(4, 'KT826391628396123', 'Volvo', 'V60', 2019, 'Gray'),
(5, 'DAM41398123412341', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (id, customer_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES 
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Castellana 34', 'Madrid', 'Madrid', 'Spain', '28046');

INSERT INTO customers (id, customer_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES 
(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO staff (id, staff_ID, name, store)
VALUES 
(0, 00001, 'Petey Cruiser', 'Madrid'),
(1, 00002, 'Anna Sthesia', 'Barcelona'),
(2, 00003, 'Paul Molive', 'Berlin'),
(3, 00004, 'Gail Forcewind', 'Paris'),
(4, 00005, 'Paige Turner', 'Málaga'),
(5, 00006, 'Bob Frapples', 'Miami'),
(6, 00007, 'Walter Melon', 'Mexico City'),
(7, 00008, 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (id, invoice_number, date, car, customer, staff)
VALUES 
(0, 852399038, '2018-08-22', '3K096I98581DHSNUP', 10001, 3),
(1, 731166526, '2018-12-31', 'XM123984712938741', 20001, 5),
(2, 271135104, '2019-01-22', 'VW712871239871234', 30001, 7);