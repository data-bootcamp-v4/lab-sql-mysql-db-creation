USE lab_mysql;

INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (1, 'K096I98581DHSNUPW123', 'Volkswagen', 'Tiguan', '2019-01-01', 'Blue'),
       (2, 'ZM8G7BEUQZ97IH46V123', 'Peugeot', 'Rifter', '2019-01-01', 'Red'),
       (3, 'RKXVNNIHLVVZOUB4M123', 'Ford', 'Fusion', '2018-01-01', 'White'),
       (4, 'HKNDGS7CU31E9Z7JW123', 'Toyota', 'RAV4', '2018-01-01', 'Silver'),
       (5, 'DAM41UDN3CHU2WVF6123', 'Volvo', 'V60', '2019-01-01', 'Gray'),
       (6, 'DAM41UDN3CHU2WFTY123', 'Volvo', 'V60', '2019-01-01', 'Gray');

INSERT INTO customer (ID, customer_ID, name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES (1, '001abcwww', 'Pablo Picasso', '+34636176382', 'pablo@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
       (2, '002abcxxx', 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
       (3, '003abcyyy', 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
       
INSERT INTO salespersons (ID, staff_ID, name, store)
VALUES (1, '00001a', 'Anna', 'Madrid'),
       (2, '00002b', 'Alice', 'Barcelona'),
       (3, '00003c', 'Bob', 'Belin'),
       (4, '00004d', 'Mark', 'Amsterdam'),
       (5, '00005e', 'Pete', 'Rotterdam'),
       (6, '00006f', 'Sarah', 'Utrecht'),
       (7, '00007g', 'Walter', 'Brussels'),
       (8, '00008h', 'Linda', 'Antwerpen');
       
INSERT INTO invoices (ID, invoice_number, date, VIN, customer_ID, staff_ID)
VALUES (1, '852399038', '2018-08-22', 'K096I98581DHSNUPW123', '001abcwww', '00001a'),
       (2, '731166526', '2018-12-31', 'RKXVNNIHLVVZOUB4M123', '002abcxxx', '00007g'),
       (3, '271135104', '2019-01-22', 'DAM41UDN3CHU2WFTY123', '003abcyyy', '00005e');