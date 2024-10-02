INSERT INTO lab_mysql.cars (VIN, manufacturer, model, `year`,color)
VALUES (123, 'Volkswagen', 'Tiguan',	2019, 'Blue'),
       (456, 'Peugeot', 'Rifter', 2019, 'Red'),
       (789, 'Ford', 'Fusion', 2018, 'White'),
       (987, 'Toyota', 'RAV4', 2018, 'Silver'),
       (654, 'Volvo', 'V60', 2019, 'Gray'),
       (321, 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO lab_mysql.customers (customersID, `name`, phonenumber, email,address, city, `state/province`,country,`zip code`)
VALUES (10001,	'Pablo Picasso',	'34 636 17 63 82', '-','Paseo de la Chopera 14',	'Madrid',	'Madrid',	'Spain',	'28045'),
	   (20001,	'Abraham Lincoln',	'1 305 907 7086',	'-','120 SW 8th St',	'Miami',	'Florida', 'United States',	'33130'),
	   (30001,	'Napoléon Bonaparte',	'33 79 75 40 00',	'-','40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008');

INSERT INTO lab_mysql.salespersons (staffID, `name`, store)
VALUES (00001,	'Petey Cruiser',	'Madrid'),
		(00002,	'Anna Sthesia',	'Barcelona'),
        (00003,	'Paul Molive',	'Berlin'),
        (00004,	'Gail Forcewind',	'Paris'),
        (00005,	'Paige Turner',	'Miami'),
        (00006,	'Bob Frapples',	'Mexico City'),
        (00007,	'Walter Melon',	'Amsterdam'),
        (00008,	'Shonda Leer',	'São Paulo');
        
        
INSERT INTO lab_mysql.invoices (invoicesID, `date`, VIN, customersID, staffID)
VALUES (852399038,	22-08-2018,	1,	1,	3),
		(731166526,	31-12-2018,	3,	3,	5),
        (271135104,	22-01-2019,	2,	2,	7);