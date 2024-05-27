INSERT INTO customers (CustomerID, Name, Email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');

INSERT INTO cars (VehicleID, VIN, Manufacturer, Model, Year, Color)
VALUES (1, '3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Blue'),
		(2,	'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
        (3,	'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
        (4,	'HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	2018,	'Silver'),
        (5,	'DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	2019,	'Gray'),
        (6,	'DAM41UDN3CHU2WVF6',	'Volvo',	'V60 Cross Country',	2019,	'Gray');

INSERT INTO customers (CustomerID, Name, PhoneNumber, Address, City, StateProvince, Country, ZipPostalCode)
VALUES (10001,	'Pablo Picasso',	'+34 636176382',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	'28045'),
		(20001,	'Abraham Lincoln',	'+1 3059077086',	'120 SW 8th St',	'Miami',	'Florida',	'United States',	'33130'),
        (30001,	'Napoléon Bonaparte',	'+33 179754000',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008');

INSERT INTO salespersons (StaffID, Name, Store)
VALUES (00001,	'Petey Cruiser',	'Madrid'),
		(00002,	'Anna Sthesia',	'Barcelona'),
        (00003,	'Paul Molive', 'Berlin'),
        (00004,	'Gail Forcewind', 'Paris'),
        (00005,	'Paige Turner',	'Mimia'),
        (00006,	'Bob Frapples',	'Mexico City');


INSERT INTO invoices (InvoiceNumber, Date, VehicleID, CustomerID, StaffID)
VALUES (852399038,	'2018-08-22',	1, 10001,	00003),
		(731166526,	'2018-12-31',	3,	30001,	00005),
        (271135104,	'2019-01-22',	2,	20001,	00006);

        
        

