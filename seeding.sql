USE lab_mysql;
	INSERT IGNORE INTO cars (vin, manufacturer,model,year,color)
	VALUES 
(1231534, 'Volkswagen', 'Tiguan',1988, 'blue'),
(10233242,  'Peugeot', 'Rifter',2002, 'Red'),
(15453242, 'Ford', 'Fusion',2012, 'White'),
(15345342, 'Toyota', 'RAV4',2012, 'Silver'),
(6346346, 'Volvo', 'V60',2012, 'Gray');
	INSERT IGNORE INTO customers (customer_id,name, phone_number, email, address, city, state_province, country, zip_postal_code)
	VALUES 
    ('1', 'Pablo Picasso', '+34 636 17 63 82', ' pp45@gmail,com', 'Paseo de la Chopera 14', 'Madrid','Madrid', 'Spain', '28045'),
       ('2', 'Abraham Lincoln', '+1 305 907 7086', 'al90@gmail.com ', '120 SW 8th Street', 'Miami','Florida', 'United States', '33130'),
       ('3', 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'nabonap@gmail.com ', '40 Rue du Colisée', 'Paris','Paris','France', '75008');

	INSERT IGNORE INTO salespersons (staff_id,name,store)
	VALUES
	   ('101', 'Gail Forcewind', 'Paris'),
       ('102', 'Paige Turner', 'Miami'),
       ('103', 'Bob Frapples', 'Mexico City'),
       ('104', 'Walter Melons', 'Amsterdam');
		   
    INSERT IGNORE INTO invoices (invoice_number,datec,vin, customer_id, staff_id) 
    VALUES
		(334929939,2014-08-01,1231534,'1','1012'),
		( 731166526,2011-12-18,10233242,'2','1022'),
		( 271135104,2022-01-19,15453242,'3','1032');
    