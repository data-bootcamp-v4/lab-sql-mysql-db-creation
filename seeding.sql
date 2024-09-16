INSERT INTO customer (name, phone, email, address, city, state, country, postal_code)
VALUES ('Pablo Picasso',	34636176382, 'picasso@email.com',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	28045),
		('Abraham Lincoln',	13059077086, 'lincoln@email.com', '120 SW 8th St',	'Miami',	'Florida',	'United States',	33130),
		('Napoléon Bonaparte',	33179754000, 'napoleon@email.com', '40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	75008);
	
INSERT INTO car (car_id, vin, manufacturer, model, car_year, color)
VALUES (1, 'K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Blue'),
		(2, 'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
		(3,	'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
		(4,	'HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	2018,	'Silver'),
		(5,	'DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	2019,	'Gray'),
		(6,	'DAM41UDN3CHU2WVF6',	'Volvo',	'V60 Cross Country',	2019,	'Gray');

INSERT INTO salesperson (staff_id, name, store)
VALUES( 00001, 'Petey Cruiser', 'Madrid'),
		(00002, 'Anna Sthesia', 'Barcelona'),
		(00003, 'Paul Molive', 'Berlin'),
		(00004, 'Gail Forcewind', 'Paris'),
		(00005, 'Paige Turner', 'Mimia'),
		(00006, 'Bob Frapples', 'Mexico City'),
		(00007, 'Walter Melon', 'Amsterdam'),
		(00008, 'Shonda Leer', 'São Paulo');

INSERT INTO invoice (id, invoice_nr, invoice_date, car_id, customer_id, staff_id)
VALUES  (1, 852399038, '2002-08-18', 1, 1, 3),
		(2, 731166526, '2001-12-20', 3, 3, 5),
		(3, 271135104, '2012-01-01', 2, 2, 7)

