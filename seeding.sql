USE mydb;

INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES (1111111, "Volkswagen", "Tiguan", 2019, "Blue"),
	(1111112, "Peugeot", "Rifter", 2019, "Red"),
    (1111113, "Ford", "Fusion", 2018, "White"),
    (1111114, "Toyota", "RAV4", 2018, "Silver"),
    (1111115, "Volvo", "V60", 2019, "Gray"),
    (1111116, "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers (custormer_ID, name, phone_number, email, address, city, state, country, postal_code)
VALUES (10001, "Pablo Picasso", "+34 636 17 63 82", "pablo@gmail.com", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
	(20001, "Abraham Lincoln", "+1 305 907 7086", "abraham@gmail.com", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
    (30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "napo@gmail.com", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");
    
INSERT INTO salesperson (staff_ID, name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
	(00002, "Anna Sthesia", "Barcelona"),
    (00003, "Paul Molive", "Berlin"),
    (00004, "Gail Forcewind", "Paris"),
    (00005, "Paige Turner", "Miami"),
    (00006, "Bob Frapples", "Mexico City"),
    (00007, "Walter Melon	", "Amsterdam"),
    (00008, "Shonda Leer", "São Paulo");
    
INSERT INTO invoices (invoice_number, date, car, customer, salesperson)
VALUES (852399038, 2018-08-22, 1, 1, 3),
	(731166526, 2018-12-31, 3, 3, 5),
    (271135104, 2019-01-22, 2, 2, 7);