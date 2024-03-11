INSERT INTO cars (id,car_vin, manufacturer,
model, year_, cars_color)
VALUES (0,'3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
       (0,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
		(0,'RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
        (0,'HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
        (0,'DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),
        (0,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

INSERT INTO  customers (customer_id, name, phone_number,email,address,city,
state_province,country,zip_postal_code)
VALUES (10001,'Pablo Picasso','+34 636 17 63 82',NULL,'Paseo de la Chopera, 14',	'Madrid','Madrid','Spain','28045'),
(20001,'Abraham Lincoln','+1 305 907 7086',NULL,'120 SW 8th St','Miami','Florida','United States','33130'),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00',NULL,'40 Rue du Colisée','Paris','Île-de-France','France','75008');

INSERT INTO sales_persons (staff_id, name,store)
VALUES (00001,'Petey Cruiser','Madrid'),
(00002,'Anna Sthesia','Barcelona'),
(00003,'Paul Molive','Berlin'),
(00004,'Gail Forcewind','Paris'),
(00005,'Paige Turner','Mimia'),
(00006,'Bob Frapples','Mexico City'),
(00007,'Walter Melon','Amsterdam'),
(00008,'Shonda Leer','São Paulo');

INSERT INTO invoices (invoice_number,date_,car_vin,customer_id, name, staff_id)
VALUES ('852399038','2018-08-22','3K096I98581DHSNUP',10001,'Pablo Picasso', 00003),
('731166526','2018-12-31','RKXVNNIHLVVZOUB4M',30001,'Napoléon Bonaparte',00005),
('271135104','2019-01-22','ZM8G7BEUQZ97IH46V',20001,'Abraham Lincoln',00007);