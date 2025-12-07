INSERT INTO cars (car_ID, VIN, manufacturer, model, year, color)
VALUES ('1','3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
		('2','ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
		('3','RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
		('4', 'HKNDGS7CU31E9Z7JW', 'Toyota',	'RAV4',	'2018',	'Silver'),
		('5', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
		('6', 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country',	'2019', 'Gray');

INSERT INTO Customers (customer_ID, customer_name, phone_number, email, address, city, state, country, zip)
VALUES ('10001', 'Pablo Picasso', '+34 636 17 63 82', ' ', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
		('20001', 'Abraham Lincoln', '+1 305 907 7086', ' ', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
		('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', ' ', '40 Rue du Colisée', 'Paris',	'Île-de-France', 'France', '75008');
        
INSERT INTO salesperson (staff_ID, staff_name, store_name)
VALUES ('00001', 'Petey Cruiser','Madrid'),
	('00002', 'Anna Sthesia', 'Barcelona'),
	('00003', 'Paul Molive', 'Berlin'),
	('00004', 'Gail Forcewind', 'Paris'),
	('00005', 'Paige Turner', 'Mimia'),
	('00006', 'Bob Frapples', 'Mexico City'),
	('00007', 'Walter Melon', 'Amsterdam'),
	('00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (invoice_number, date, car_ID, customer_ID, staff_ID)
VALUES
(852399038, '2018-08-22', '1', '10001', '00003'),
(731166526, '2018-12-31', '3', '30001', '00005'),
(271135104, '2019-01-22', '2', '20001', '00007');