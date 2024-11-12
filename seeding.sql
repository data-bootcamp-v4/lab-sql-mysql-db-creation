INSERT INTO cars (VIN, manufacturer, model, colour, year)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "Blue", 2019),
		("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "Red", 2019),
		("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "White", 2018),
		("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "Silver", 2018),
        ("DAM41UDN3CHU2WVF6", "Volvo", "V60", "Gray", 2019);
    
INSERT INTO customers (customer_ID, name, phone_number, email, address, city, state_province, country, zip_postal)
VALUES (10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera, 14", "Madrid", "Madrid", "SPA", 28045),
		("20001", "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "US", 33130),
		("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rue due Colisée", "Paris", "Île-de-France", "FRA", 75008);


INSERT INTO salespersons (staff_ID, name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
		(00002, "Anna Sthesia", "Barcelona"),
		(00003, "Paul Molive", "Berlin"),
		(00004, "Gail Forcewind", "Paris"), 
		(00005, "Paige Turner", "Mimia"),
		(00006, "Bob Frapples", "Mexico City"),
		(00007, "Walter Melton", "Amsterdam"),
		(00008, "Shonda Leer", "Sao Paolo");
    
INSERT INTO invoices (invoice_number, date, VIN, customer_ID, staff_ID)
VALUES (852399038, "2018-08-22", "3K096I98581DHSNUP", "10001", "00003"),
		(731166526, "2018-12-31", "RKXVNNIHLVVZOUB4M", "30001", "00005"),
        (271135104, "2019-01-22", "ZM8G7BEUQZ97IH46V", "20001", "00007");
        
        
        
        
SELECT * FROM invoices ORDER BY date DESC;

		