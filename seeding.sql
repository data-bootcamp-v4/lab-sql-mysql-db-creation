INSERT INTO cars (vin_id, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WAD9','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WGJ3','Volvo','V60 Cross Country',2019,'Gray'),
('DAM41UDN3CHU2WQW7','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WLF4','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO invoices (invoice_nr,date ,car ,customer,sales_person)
VALUES (852399038,'22-08-2018',1,1,3),
(731166526,'31-12-2018',3,3,5),
(271135104,'22-01-2019',2,2,7);

INSERT INTO sales_person (name, store)
VALUES ('Petey Cruiser','Madrid'),
('Anna Sthesia','Barcelona'),
('Paul Molive','Berlin'),
('Gail Forcewind','Paris'),
('Paige Turner','Mimia'),
('Bob Frapples','Mexico City'),
('Walter Melon','Amsterdam'),
('Shonda Leer','São Paulo');

INSERT INTO customers(name , phone_number , email , address , city , state_province , country , postal_code )
VALUES ('Pablo Picasso','+34 636 17 63 82','-',"Paseo de la Chopera, 14",'Madrid','Madrid','Spain','28045'),
('Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130'),
('Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France','75008');
