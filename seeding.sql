INSERT INTO cars (VIN,manufacturer,model, Year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019,'Blue'),
	('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019,'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford','Fusion',2018,'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota','RAV4',2018,'Silver'),
    ('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
    
INSERT INTO Customers(customer_id, name, phone, address, city, state_province, country, zip_code)
VALUES (10001, 'Pablo Picasso', '+34 636 17 63 82' , '--', 'Paseo de la Chopera, 14 ', 'Madrid','Spain','28045'),
(20001,'Abraham Lincoln', '+1 305 907 7086','--','120 SW 8th St','Miami Florida','US','33130'),
(30001,' Napoléon Bonaparte', '+33 1 79 75 40 00','--','40 Rue du Colisée',' Paris Île de France','France','75008');

INSERT INTO Salespersons(staff_id,name,store)
VALUES (1,'Petey Cruiser','Madrid'),
(2, 'Anna Sthesia','Barcelona'),
(3,'Paul Molive','Berlin'),
(4,'Gail Forcewind','Paris'),
(5,'Paige Turner','Miami'),
(6,'Bob Frapples','Mexico City'),
(7,'Walter Melon','Amsterdam'),
(8,'Shonda Leer','São Paulo');


INSERT INTO Invoices(invoice_nr,date,VIN,customer_id,staff_id)
VALUES(852399038,'2018-08-22','3K096I98581DHSNUP',10001,3),
(731166526,'2018-12-31','RKXVNNIHLVVZOUB4M',30001,5),
(271135104,'2019-01-22','ZM8G7BEUQZ97IH46V',20001,7)

 
