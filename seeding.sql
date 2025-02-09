INSERT INTO cars (vin,manufacturer,modelo,year,color)
VALUES ("3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion","2018","White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray"),
("DAM41UDN3CHU2WVF6","Volvo","V60_Cross_Country",2019,"Gray");

INSERT INTO Customers (customer_ID, name, phone, email, address, city, state_province, country, zip_postal_code)
VALUES (10001, 'Pablo Picasso', '+34636176382', '-', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+13059077086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33179754000', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

INSERT INTO invoices (invoice_number,date,car,customer_ID,staff_ID)
VALUES (852399038,"2018-08-22",1,1,3),
(731166526,"2018-12-31",3,3,5),
(271135104,"2019-01-22",2,2,7);

INSERT INTO salesperson (id,staff_id,name,store)
VALUES (1,00001,"PeteyCruiser","Madrid"),
(2,00002,"Anna Sthesia","Barcelona"),
(3,00003,"Paul Molive","Berlin"),
(4,00004,"Gail Forcewind","Paris"),
(5,00005,"Paige Turner","Mimia"),
(6,00006,"Bob Frapples","Mexico City"),
(7,00007,"Walter Melon","Amsterdam"),
(8, 8,"Shonda Leer","São Paulo");