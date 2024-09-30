INSERT INTO cars (vin, manufacturer, model, year_released, color)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
	   ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
       ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
       ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2019, "Blue"),
       ("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
       ("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers (customer_id, customer_name, phone, email, address, city, state, country, zip)
VALUES (10001, "Pablo Piacsso", "+34636176382", "pablop@gmail.com", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045" ),
	   (20001, "Abe Lincoln", "+13059077086", "abelin@gmail.com", "120 SW 8th St", "Miami", "Florida", "United States", "33130" ),
       (30001, "Napoléon Bonaparte", "+33179754000", "napobon@gmail.com", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008" );
       
SELECT * 
FROM customers;

INSERT INTO salespersons (staff_id, name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
       (00002, "Anna Sthesia", "Barcelona"),
       (00003, "Paul Molive", "Berlin"),
       (00004, "Gail Forcewind", "Paris"),
       (00005, "Paige Turner", "Miami"),
       (00006, "Bob Frapples", "Mexico"),
       (00007, "Walter Melon", "Amsterdam"),
       (00008, "Shonda Leer", "São Paulo");

INSERT INTO invoices (invoice_number, invoice_date, vin, customer_id, salesperson_id)
VALUES (852399038, "2018-08-22", "3K096I98581DHSNUP", 10001, 00003),
	(731166526, "2018-12-31", "RKXVNNIHLVVZOUB4M", 30001, 00005),
       (271135104, "2019-01-22", "ZM8G7BEUQZ97IH46V", 20001, 00007);


	   


