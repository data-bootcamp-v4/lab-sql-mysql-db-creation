/* Challenge 3 - Seeding the Database */

USE lab_mysql;

/* Use the INSERT INTO statement to insert data into your database:*/

INSERT INTO cars (car_id, VIN, manufacturer,model,year,color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
		(2,	'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
        (3,	'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
        (4,	'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
        (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
        (6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

SELECT * FROM cars;

INSERT INTO customers (customer_id,name,phone_number,email,adress,city,state,country,zip)
VALUES (10001, 'Pablo Picasso','+34 636 17 63 82', '' ,'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
		(20001,'Abraham Lincoln','+1 305 907 7086','','120 SW 8th St','Miami','Florida','United States','33130'),
		(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','','40 Rue du Colisée','Paris','Île-de-France','France','75008');

SELECT * FROM customers;


INSERT INTO salespersons (staff_id,name,store)
VALUES (1,'Petey Cruiser','Madrid'),
		(2,'Anna Sthesia','Barcelona'),
		(3,'Paul Molive','Berlin'),
		(4,'Gail Forcewind','Paris'),
		(5,'Paige Turner','Mimia'),
		(6,'Bob Frapples','Mexico City'),
		(7,'Walter Melon','Amsterdam'),
		(8,'Shonda Leer','São Paulo');

SELECT * FROM salespersons;

INSERT INTO invoices (invoice_id,invoice_number,date,car_id,customer_id,staff_id)
VALUES (1,'852399038','22-08-2018',1,10001,3),
		(2,'731166526','31-12-2018',3,30001,5),
        (3,'271135104','22-01-2019', 2,20001,7);
        
SELECT * FROM invoices;