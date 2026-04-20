INSERT INTO cars (vin, manufacturer, model, year, color)
VAlUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
	("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
    ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
    ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver")
    ;
    
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_city, cust_state, cust_country)
VALUES (10001, "Pablo Picasso",	"+34 636 17 63 82", "Madrid", "Madrid", "Spain"),
	(20001, "Abraham Lincoln", "+1 305 907 7086", "Miami", "Florida", "United States"),
    (30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "Paris", "Île-de-France", "France")
	;
    
    
INSERT INTO salespersons (staff_id, name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
	(00002, "Anna Sthesia", "Miami"),
    (00003, "Paul Molive", "Berlin"),
    (00004, "Gail Forcewind", "Paris")
	;
    
INSERT INTO invoices (invoice_number, date, vin_car, customer_id, staff_id) 
VALUES (852399038, "2018-08-22", "RKXVNNIHLVVZOUB4M", 30001, 00004),
	(731166526, "2018-12-31", "ZM8G7BEUQZ97IH46V", 10001, 00001),
    (271135104, "2019-01-22", "HKNDGS7CU31E9Z7JW", 20001, 00002)
	;

SELECT * FROM invoices;