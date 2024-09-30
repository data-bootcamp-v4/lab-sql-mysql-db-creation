USE `car_dealership`;

INSERT INTO cars(`VIN`, `manufacturer`, `model`, `year`,`color`)
VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

INSERT INTO customers(`name`,`phone_number`,`address`,`city`,`state`,`country`,`zip/postal code`)
VALUES ('Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
('Abraham Lincoln','+1 305 907 7086','120 SW 8th St','Miami','Florida','United States','33130'),
('Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','Paris','Île-de-France','France','75008');

INSERT INTO salesperson(`name`,`store`)
VALUES ('Petey Cruiser','Madrid'),
('Anna Sthesia','Barcelona'),
('Paul Molive','Berlin'),
('Gail Forcewind','Paris'),
('Paige Turner','Mimia'),
('Bob Frapples','Mexico City'),
('Walter Melon','Amsterdam'),
('Shonda Leer','São Paulo');


INSERT INTO invoices(`invoice_id`,`date`,`car_id`,`customer_id`,`staff_id`)
VALUES ('852399038',STR_TO_DATE('22-08-2018','%d-%m-%Y'),'1','1','3'),
('731166526',STR_TO_DATE('31-12-2018','%d-%m-%Y'),'3','3','5'),
('271135104',STR_TO_DATE('22-01-2019','%d-%m-%Y'),'2','2','7');