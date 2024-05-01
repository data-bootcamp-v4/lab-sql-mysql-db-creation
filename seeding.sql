USE lab_mysql;
INSERT INTO cars (manufacturer, model, year, color, car_id)
VALUES ("Volkswagen", "Tiguan", "2019", "Blue"),
	   ("Peugeot", "Rifter", 2019, "Red"),
	   ("Ford", "Fusion", 2018, "White"),
	   ("Toyota", "RAV4", 2018, "Silver"),
	   ("Volvo", "V60", 2019, "Gray"),
	   ("Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers (name, phone_number, email, adress, city, state, country, zip, customer_id)
VALUES ("Pablo Picasso", "+34636176382", "ppicasso@gmail.com", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
	   ("Abraham Lincoln", "+13059077086", "lincoln@us.gov", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
	   ("Napoléon Bonaparte","+33179754000", "hello@napoleon.me", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

INSERT INTO sales_persons (name, store, staff_id)
VALUES ("Petey Cruiser", "Madrid"),
	   ("Anna Sthesia", "Barcelona"),
       ("Paul Molive", "Berlin"),
       ("Gail Forcewind", "Paris"),
       ("Paige Turner", "Mimia"),
       ("Bob Frapples", "Mexico City"),
       ("Walter Melon", "Amsterdam"),
       ("Shonda Leer", "São Paulo");
       
INSERT INTO invoices (date, customer_id, staff_id,car_id, invoices_number)
VALUES (22-08-2018, "1", "3", "1"),
	   (31-12-2018, "3", "5", "3"),
       (22-01-2019, "2", "7", "2");
       