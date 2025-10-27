
INSERT INTO cars (VIN, manufacturer, model, year, color)
	VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'negro'),
			('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'rojo'),
            ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'blanco'),
            ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'gris'),
            ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'gris'),
            ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'gris');
            

INSERT INTO customers (id_customer, name, phone, email, address, city, province, country, zip)
	VALUES (10001, 'Pablo Picasso', '+34 636 176 382', 'pablopicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
			(20001, 'Abraham Lincoln', '+1 305 907 7086', 'abrahamlincoln@gmail.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
            (30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', 'napoleonbonaparte@gmail.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (id_staff, name, store)
	VALUES (00001, 'Petey Cruiser', 'Madrid'),
			(00002, 'Anna Sthesia', 'Barcelona'),
            (00003, 'Paul Molive', 'Berlin'),
            (00004, 'Gail Forcewind', 'Paris'),
            (00005, 'Paige Turner', 'Miami'),
            (00006, 'Bob Frapples', 'Mexico City'),
            (00007, 'Walter Melon', 'Amsterdam'),
            (00008, 'Shonda Leer', 'Sao Paulo');
            
INSERT INTO invoices (invoice_number, date, car, customer, salesperson)
	VALUES (852399038, 20180822, 1, 1, 3),
			(731166526, 20181231, 3, 3, 5),
            (271135104, 20190122, 2, 2, 7);