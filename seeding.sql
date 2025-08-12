INSERT INTO `lab_mysql`.`cars` (`VIN`,`manufacturer`,`model`,`year`,`color`)
VALUES ('3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Blue'),
('ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
('RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
('HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	2018,	'Silver'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	2019,	'Gray');

INSERT INTO `lab_mysql`.`customers` (`customer_ID`,`Name`,`Phone_nr`,`Email`,`Address`,`City`,`State`,`Country`,`Zipcode`)
VALUES
(10001,	'Pablo Picasso',	'+34636176382',	'ppicasso@gmail.com',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	28045),
(20001,	'Abraham Lincoln',	'+13059077086',	'lincoln@us.gov',	'120 SW 8th St',	'Miami',	'Florida',	'United States',	33130),
(30001,	'Napoléon Bonaparte',	'+33179754000',	'hello@napoleon.me',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	75008);


INSERT INTO `lab_mysql`.`salesperson` (`staff_ID`,`Name`,`Store`)
VALUES
(1,	'Petey Cruiser',	'Madrid'),
(2,	'Anna Sthesia',	'Barcelona'),
(3,	'Paul Molive',	'Berlin'),
(4,	'Gail Forcewind',	'Paris'),
(5,	'Paige Turner',	'Mimia'),
(6,	'Bob Frapples',	'Mexico City'),
(7,	'Walter Melon',	'Amsterdam'),
(8,	'Shonda Leer',	'São Paulo');


INSERT INTO invoices (invoice_nr, date, VIN, customer_ID, staff_ID)
VALUES (852399038, 2018-08-22,'3K096I98581DHSNUP', 10001, 00003),
(731166526,	2018-12-31,	'RKXVNNIHLVVZOUB4M', 30001,	00005),
(271135104,	2019-01-22,	'ZM8G7BEUQZ97IH46V', 20001,	00007);

