INSERT INTO lab_mysql.cars(vin, manufacturer, model, release_year, color)
VALUES 	('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'negro'),
	('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'rojo'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'blanco'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'rojo'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'negro');
    
INSERT INTO lab_mysql.customers(id_customer, name_customer, phone_number, email, address, city, state, country, zip)
VALUES (1, 'Pablo Picasso', '+34687599874', 'pablopicasso@hotmail.com', 'C/ Conchinchina, 14', 'Sevilla', 'Sevilla', 'España', '41010'),
	(2, 'Alberto Durero', '+34687599664', 'albertodurero@hotmail.com', 'C/ Conchinchina, 12', 'Sevilla', 'Sevilla', 'España', '41010'),
    (3, 'Rilke', '+34687599666', 'rilkeelpoeta@hotmail.com', 'C/ Conchinchina, 13', 'Sevilla', 'Sevilla', 'España', '41010'),
    (4, 'Raúl Zurita', '+34687559874', 'raulzurita@hotmail.com', 'C/ Conchinchina, 10', 'Sevilla', 'Sevilla', 'España', '41010'),
    (5, 'Marcel Proust', '+34687599811', 'proustmorenito@hotmail.com', 'C/ Conchinchina, 7', 'Sevilla', 'Sevilla', 'España', '41010');
    
INSERT INTO lab_mysql.salespersons(id_staff, name_staff, store)
VALUES (1, 'Petey Cruiser', 'Sevilla'),
	(2, 'Peter Pan', 'Lebrija'),
    (3, 'Robe Iniesta', 'Plasencia'),
    (4, 'Alberto Ruiz', 'Sevilla'),
    (5, 'Paige Turner', 'París');
    
INSERT INTO lab_mysql.invoices(id_invoice, date, car, id_customer, id_staff)
VALUES (1, '2015-12-24 12:00:11', '3K096I98581DHSNUP', 1, 2),
	(2, '2015-12-23 12:00:15', 'ZM8G7BEUQZ97IH46V', 2, 3),
    (3, '2015-12-24 12:12:11', 'RKXVNNIHLVVZOUB4M', 3, 4),
    (4, '2015-12-24 12:55:11', 'HKNDGS7CU31E9Z7JW', 4, 2),
    (5, '2015-12-24 12:00:11', 'DAM41UDN3CHU2WVF6', 5, 2);