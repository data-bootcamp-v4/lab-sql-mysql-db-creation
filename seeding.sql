# CHALLENGE 3
#The purpose of database seeding 
#is to provide some initial data for an empty database to start software development based on that data.


INSERT INTO cars (id, manufacturer, model, year, color)
VALUES (1, 'Volkswagen', 'Tiguan','2019','Blue'),
       (2, 'Peugeot','Rifter','2019','Red'),
       (3, 'Ford','Fusion','2018','White'),
       (4,'Toyota','RAV4','2018','Silver');
       
INSERT INTO customers (cust_id,cust_name,cust_address,cust_city,cust_state,cust_country)
VALUES (10001,'Pablo Picasso', '+34636176382', 'Paseo de la Chopera,14','Madrid', 'Madrid','Spain'),
       (20001,'Abraham Lincoln','+13059077086', '120 SW 8th St', 'Miami','Florida', 'United States'),
       (30001,'Napoleon Bonaparte','+33179754000','40 Rue du Colisee','Paris','Ile-de-France','France');
       
INSERT INTO salespersons (id, staff_id, sales_name,store)
VALUES (1, 00001, 'Petey Cruiser', 'Madrid'),
       (2, 00002, 'Anna Sthesia', 'Barcelona'),
       (3, 00003, 'Paul Molive' , 'Berlin'),
       (4, 00004, 'Gail Forcewind' , 'Paris');
 
 -- when you add dates in sql the year always goes first because is the international format ISO 8601 YYYY/MM/DD
 
INSERT INTO invoices (id, invoice_number, invoice_date, car, customer, salesperson)
VALUES (1, 852399038, '2018-08-22', '1' ,'1', '3'),
	   (2, 731166526,'2018-12-31','3', '3', '5'),
       (3,271135104,'2019-01-22','2','2','7');
       
       
 