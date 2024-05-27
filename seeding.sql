INSERT INTO customers (auto_customer_id, customer_id, name, phone_number, address, city, state_province, country, zip_postal_code)
VALUES (1, '10001', 'Pablo Picasso', '0034636176382', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
       (2, '20001', 'Abraham Lincoln', '0013059077086', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
       (3, '30001', 'Napoléon Bonaparte', '0033179754000', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
       
INSERT INTO cars (car_id, VIN, manufacturer, model, year, color)
VALUES (1,	'3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Blue'),
       (2,	'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
       (3,	'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
       (4,	'HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	2018,	'Silver'),
       (5,	'DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	2019,	'Gray');
       
INSERT INTO Salespersons (salesperson_id, staff_id, name, store)
VALUES (1,	'00001',	'Petey Cruiser',	'Madrid'),
       (2,	'00002',	'Anna Sthesia',	'Barcelona'),
       (3,	'00003',	'Paul Molive',	'Berlin'),
       (4,	'00004',	'Gail Forcewind',	'Paris'),
       (5,	'00005',	'Paige Turner',	'Mimia'),
	   (6,	'00006',	'Bob Frapples	',	'Mexico City'),
       (7,	'00007',	'Walter Melon	',	'Amsterdam'),
       (8,	'00008',	'Shonda Leer	',	'São Paulo');    
       
INSERT INTO Invoices (invoice_id, invoice_number, date, car_id, auto_customer_id, salesperson_id)
VALUES (1,	'852399038',	'2018-08-22',	1, 1, 3),
       (2,	'731166526',	'2018-12-31',	3, 3, 5),
       (3,	'271135104',	'2019-01-09',	2, 2, 7);