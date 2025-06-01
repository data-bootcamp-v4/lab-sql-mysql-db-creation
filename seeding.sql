USE lab_mysql;

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state, country, ZIP_code)
VALUES ("10001", "Pablo Picasso",  "63176382", "picasso@server.es", "Paseo de la Chopera, 14",  "Madrid", "MD", "Spain", "28045"),
	   ("20001", "Abraham Lincoln",  "30977086", "lincoln@server.us", "120 SW 8th St", "Miami", "FL", "USA", "33130"),
	   ("30001", "Napoléon Bonaparte", "79754000", "bonapart@server.fr", "40 Rue du Colisée", "Paris", "IF", "France", "75008");i
       
INSERT INTO salespersons (staff_ID, name, store)
VALUES ("00001", "Daniel Cruz", "Madrid"),
	   ("00002","Ana Dias", "Barcelona"),
	   ("00003", "Paul Muller", "Berlin"),
       ("00004", "Aurelie Fournier", "Paris"),
       ("00005", "Jennifer Turner", "Miami"),
	   ("00006", "Heitor Gomez", "Mexico City"),
	   ("00007", "Vincent Vedder", "Amsterdam"),
       ("00008", "Walter Silva", "São Paulo");
       
INSERT INTO cars (id, vehicle_id_number, manufacturer, model,  year, color)
VALUES ("1", "3K096I9858",  "Volkswagen", "Tiguan", "2019", "Blue"),
	   ("2", "ZM8G7BEUQZ", "Peugeot", "Rifter", "2019", "Red"),
       ("3", "RKXVNNIHLV", "Ford", "Fusion", "2018", "White"),
	   ("4", "HKNDGS7CU3", "Toyota", "RAV4", "2018", "Silver"),
	   ("5", "DAM41UDN3C", "Volvo", "V60", "2019", "Gray"),
       ("6", "DAM41UDN3C", "Volvo", "V60 Cross Country", "2019", "Gray");
       
INSERT INTO invoices (id, invoice_number, sale_date, VIN, customer_id, staff_id)
VALUES ("1", "852399038", STR_TO_DATE("22-08-2018", '%d-%m-%Y'), "3K096I9858", "10001", "00003"),
	   ("2", "731166526", STR_TO_DATE("31-12-2018", '%d-%m-%Y'), "RKXVNNIHLV", "30001", "00005"),
	   ("3", "271135104", STR_TO_DATE("22-01-2019", '%d-%m-%Y'), "ZM8G7BEUQZ", "20001", "00007");