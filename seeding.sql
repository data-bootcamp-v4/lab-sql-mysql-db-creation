USE lab_1

INSERT INTO cars (VIC, manufacturer, model, year, color) VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan","2019", "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "2019", "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"),
("HKNDGS7CU31E9Z7JW", "Toyota","RAV4", "2018", "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60","2019", "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", "2019","Gray");

INSERT INTO customers (name, phone, email, address,city,state,country,zip_code) VALUES
("Pedro Lopez","0034636176382"," ","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045"),
("Abraham Lincoln","0013059077086"," ","120 SW 8th St","Madrid","Miami","United States","33130"),
("Napoléon Bonaparte","0033179754000"," ","40 Rue du Colisée","Paris","Île-de-France","France","75008");

INSERT INTO salespersons (name,store) VALUES
("Petey Cruiser", "Madrird"),	
("Anna Sthesia", "Barcelona"),	
("Paul Molive", "Berlin"),	
("Gail Forcewind", "Paris"),
("Paige Turner", "Mimia"),
("Bob Frapples", "Mexico City"),
("Walter Melon", "Amsterdam"),
("Shonda Leer", "São Paulo");
	
INSERT INTO invoices (invoice_number, date,auto_id,customer_id,staff_id) VALUES
("852399038","2018-08-22",1,1,3),
("731166526","2018-12-31",3,3,5),
("271135104","2019-01-22",2,2,7);