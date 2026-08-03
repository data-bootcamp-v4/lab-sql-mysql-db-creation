INSERT INTO cars (car_id, VIN, manufacturer, model, year, color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',	2019, 'Blue'),
	   (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
	   (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
	   (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
	   (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
	   (6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
INSERT INTO customers (customer_id, first_name, last_name, phone_number, email, address, city, state, country, zip_code)
VALUES (10001, 'Pablo', 'Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
	   (20001, 'Abraham', 'Abraham', '+1 305 907 7086', '-', '120 SW 8th St', 'Madrid', 'Florida', 'United States', '33130'),
	   (30001, 'Napoléon', 'Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008'); 
       
INSERT INTO salespersons (staff_id, first_name, last_name, store_id)
VALUES (00001, 'Petey', 'Cruiser', 10001),
	   (00002, 'Anna', 'Sthesia', 10001),
	   (00003, 'Paul', 'Molive', 10001),
	   (00004, 'Gail', 'Forcewind', 10001),
	   (00005, 'Paige', 'Turner', 10001),
	   (00006, 'Bob', 'Frapples', 10001),
	   (00007, 'Walter', 'Melon', 10001),
	   (00008, 'Shonda', 'Leer', 10001);
       
INSERT INTO invoices (invoice_id, invoice_number, date, car_id, customer_id, staff_id, total_price)
VALUES (1, '852399038', '2018-08-22',	1,	1,	00003, 5000.00),
	   (2, '731166526', '2018-12-31',	3,	3,	00005, 1500.00),
	   (3, '271135104', '2019-01-22',	2,	2,	00007, 1000.00);       
       
INSERT INTO store (store_id, store_name)
VALUES (10001,	'The Best Cars Barcelona');