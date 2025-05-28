INSERT INTO Stores (Name, Address, City, Province_State, PostalCode, Country)
	VALUES 	('Matrizauto', 'Rua Cidade do Porto', 'Braga', 'Braga', '4700', 'Portugal'),
			('Confiauto', 'Sintra Retail Park', 'Sintra', 'Lisboa', '5100', 'Portugal'),
            ('Elite', 'Champs Elisée', 'Paris', 'Ile-de-France', '1002', 'France');

INSERT INTO Salespersons (Name, Email, Phone, StoreID)
	VALUES 	('Petey Cruiser', 'pcruiser@matrizauto.com', '91001', 1),
			('Anna Sthesia', 'asthesia@confiauto.com', '92001', 2),
            ('Paul Molive', 'pmolive@elite.com', '93001', 3),
            ('Gail Forcewind', 'gforcewind@matrizauto.com', '91002', 1),
			('Paige Turner', 'pturner@confiauto.com', '92002', 2),
            ('Bob Frapples', 'bfrapples@elite.com', '93002', 3),
            ('Walter Melon', 'wmelon@matrizauto.com', '91003', 1),
			('Shonda Leer', 'sleer@confiauto.com', '92003', 2);
            
INSERT INTO Customers (Name, Address, City, Province_State, PostalCode, Country, Phone, Email)
	VALUES 	('Pablo Picasso', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', '28045', 'Spain', 34636176382, '-'),
			('Abraham Lincoln', '120 SW 8th St', 'Miami', 'Florida', '33130', 'USA', 13059077086, '-'),
            ('Napoléon Bonaparte', '40 Rue du Colisée', 'Paris', 'Ile-de-France', '75008', 'France', 33179754000, '-');
            
INSERT INTO Manufacturers (ManufacturerID, Name, Country)
	VALUES 	('VOL', 'Volvo', 'Sweden'),
			('VW', 'Volkswagen', 'Germany'),
            ('PEU', 'Peugeot', 'France'),
            ('FOR', 'Ford', 'USA'),
            ('TOY', 'Toyota', 'Japan');
            
INSERT INTO Models (ManufacturerID, Name, Version, Year)
	VALUES 	('VW', 'Tiguan', 'Core', 2019),
			('PEU', 'Rifter', 'GS', 2024),
            ('FOR', 'Fusion', 'e-Hybrid', 2018),
            ('TOY', 'RAV4', 'Core', 2018),
			('VOL', 'V60', 'GS', 2019),
            ('VOL', 'V60', 'Cross', 2019);
            
INSERT INTO Cars (VIN, ModelID, Color)
	VALUES 	('3K096I98581DHSNUP', 'VWTiguanCore2019', 'Blue'),
			('ZM8G7BEUQZ97IH46V', 'PEURifterGS2024', 'Red'),
			('RKXVNNIHLVVZOUB4M', 'FORFusione-Hybrid2018', 'White'),
            ('HKNDGS7CU31E9Z7JW', 'TOYRAV4Core2018', 'Silver'),
			('DAM41UDN3CHU2WVF6', 'VOLV60Cross2019', 'Gray');   
            
INSERT INTO Invoices (Invoice_Number, Date, StoreID, CustomerID, StaffID, VIN)
	VALUES 	(852399038, STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 1, 1, 1, '3K096I98581DHSNUP'),
			(731166526, STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 2, 2, 2, 'ZM8G7BEUQZ97IH46V'),
            (271135104, STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 3, 3, 3, 'RKXVNNIHLVVZOUB4M');            