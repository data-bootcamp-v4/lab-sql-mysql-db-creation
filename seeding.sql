USE lab_mysql;
INSERT INTO customers (CustomerID, Name, Phone_Number, Email, Adress, City, State_Province, Country, Zip_Code)
VALUES (1, "Pablo Picasso",	"+34 636 17 63 82", "pablo.picasso@mail.com", "Paseo de la Chopera, 14", "Madrid","Madrid",
	"Spain", 28045),
    (2, "Abraham Lincoln", "+1 305 907 7086", "abraham.lincoln@mail.com", "120 SW 8th St", "Miami","Florida",
	"United States",33130),
	(3, "Napoléon Bonaparte", "+33 1 79 75 40 00", "napoleon.bonaparte@mail.com", "40 Rue du Colisée", "Paris",
    "Île-de-France", "France", 75008);
INSERT INTO cars (carID, VIN, Manufacturer, Model, Year, color )   
VALUES (1, "3K096I98581DHSNUP", "Volkswagen","Tiguan",2019,"Blue"),
	(2, "ZM8G7BEUQZ97IH46V","Peugeot",	"Rifter",2019,"Red"),
	(3, "RKXVNNIHLVVZOUB4M","Ford", "Fusion",	2018,	"White"),
	(4, "HKNDGS7CU31E9Z7JW","Toyota",	"RAV4",	2018,	"Silver"),
	(5, "DAM41UDN3CHU2WVF6","Volvo","V60",	2019,	"Gray"),
    (6, "DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country",2019,"Gray");

INSERT INTO Sales_Persons (StaffID, Name, Store)
VALUES (00001,	"Petey Cruiser", "Madrid"),
	(00002, "Anna Sthesia", "Barcelona"),
	(00003,	"Paul Molive",	"Berlin"),
	(00004,	"Gail Forcewind",	"Paris"),
	(00005,	"Paige Turner","Mimia"),
	(00006,	"Bob Frapples",	"Mexico City"),
	(00007,	"Walter Melon",	"Amsterdam"),
	(00008,	"Shonda Leer",	"São Paulo");

INSERT INTO Invoices (Invoice_Number, Date, CustomerID, CarID, StaffID)
VALUES (852399038, '2018-08-22',	1,	1,	3),
(731166526,	'2018-12-31',	3,	3,	5),
(271135104,	'2019-01-22',	2,	2,	7);




ALTER TABLE CARS
MODIFY CARID BIGINT UNSIGNED NOT NULL;

SELECT * FROM USERS;
TRUNCATE TABLE cars;


	


