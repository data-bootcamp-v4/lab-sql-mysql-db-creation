USE lab_mysql;

INSERT INTO cars (car_id, vin, manufacturer, model, year, color)
VALUES (1,	'3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Blue'),
       (2,	'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
       (3,  'RKXVNNIHLVVZOUB4M',    'Ford',    'Fusion',    2018,    'White'),
       (4,  'HKNDGS7CU31E9Z7JW',    'Toyota',  'RAV4',     2018,    'Silver'),
       (5,  'DAM41UDN3CHU2WVF6',    'Volvo',   'V60',     2019,     'Gray'  );
       
INSERT INTO customers (customer_id, name, phone_number, email, adress, city, state, country, zip)
VALUES ('1', 'Pablo Picasso', 34636176382, 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
	   ('2', 'Abraham Lincoln', 13059077086, 'lincoln@us.gov', '120 SW 8th St', 'Miami','Florida','United States'),
       ('3','Napoléon Bonaparte', 33179754000,'hello@napoleon.me','40 Rue du Colisée','Paris','Île-de-France','France', 75008),
       ('4','Alex Mateu', 67772210, 'alex@mateu.ironhack', 'ironhackstreet 31', 'Barcelona', 'Barcelona', 'Spain', 08051);
       
INSERT INTO salespersons (sales_persons_id, staff_id, name, store, customer_id)
VALUES (1, '00001', 'Petey Cruiser', 'Madrid', '1'),
	   (2,'00002','Anna Sthesia','Barcelona','2'),
       (3,'00003','Paul Molive','Berlin','3'),
       (4,'00004','Gail Forcewind','Paris','4');

INSERT INTO invoices (invoice_id, invoice_number, date, car_id, sales_persons_id)
VALUES (1, 852399038, 22-08-2018, 1, 1, 1),
	   (2, 731166526, 31-12-2018, 3, '3', 3),
       (3, '271135104', 22-01-2019, 2, '2', 4);
       
INSERT INTO purchase (purchase_id, sales_persons_id, customer_id)
VALUES (1, 1, '1'),
	   (2, 2, '2'),
       (3, 3, '3');


