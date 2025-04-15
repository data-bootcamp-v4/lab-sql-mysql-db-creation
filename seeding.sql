-- INSERT INTO tbl_name () VALUES();
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyata', 'Rav4', 2018, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volva', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
INSERT INTO customers (customer_id, name, phone, email, address, city, state, country, zip_code)
VALUES ('10001', 'Pablo Picasso', '+31 636 12 68 11', NULL, 'Paseo de la Chopera 14', 'Madrid', 'Madrid','Spain', '28045'),
	   ('20001', 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       ('30001', 'Napoleon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisee', 'Paris', 'Ile de France', 'France', '75008');
       
INSERT INTO salespersons (staff_id,name, store)
VALUES ('00001', 'Petey Cruiser', 'Madrid'),
	   ('00002', 'Anna Sthesia', 'Barcelona'),
       ('00003', 'Paul Molive', 'Berlin'),
	   ('00004', 'Gail Forcewind', 'Paris'),
       ('00005', 'Paige Turner	', 'Miami'),
	   ('00006', 'Bob Frapples', 'Mexico City'),
       ('00007', 'Walter Melon', 'Amsterdam'),
	   ('00008', 'Shonda Leer', 'Sao Paulo');
       
INSERT INTO invoices (invoice_n, date, vin, customer_id, staff_id)
VALUES ('852399038', '2018-08-22', 1, 1, 3),
	   ('731166526', '2018-12-31', 3, 3, 5),
	   ('271135104', '2018-01-22', 2, 2, 7);      

SELECT * FROM invoices;





