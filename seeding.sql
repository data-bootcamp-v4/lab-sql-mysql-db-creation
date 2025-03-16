USE lab_mysql;

INSERT INTO cars (id, VIN, manufacturer, model, color)
VALUES  (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 'Blue'),
		(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 'Red'),
		(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 'White'),
		(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 'Silver'),
		(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Gray'),
        (6,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 'Gray');

INSERT INTO customers(id, customer_id, customer_name, phone_number,	customer_email, customer_address , cust_city, cust_state, cust_country, cust_zipcode)
VALUES	(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
		(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
		(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-',	'40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
        
INSERT INTO salesperson(id, staff_id, staff_name, store)
VALUES (1, '00001', 'Petey Cruiser', 'Madrid'),
		(2,	'00002', 'Anna Sthesia', 'Barcelona'),
		(3, '00003', 'Paul Molive', 'Berlin'),
		(4, '00004', 'Gail Forcewind', 'Paris'),
		(5,	'00005', 'Paige Turner', 'Mimia'),
		(6,	'00006', 'Bob Frapples', 'Mexico City'),
		(7, '00007', 'Walter Melon', 'Amsterdam'),
		(8, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (id, invoice_number, sales_date, car, customer, salesperson)
VALUES 		(1,	852399038, '22-08-2018', 1, 1, 3),
			(2,	731166526, '31-12-2018', 3, 3, 5),
			(3, 271135104, '22-01-2019', 2, 2, 7);




SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salesperson;