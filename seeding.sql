USE lab_mysql;
INSERT INTO cars (vin, manufacturer, model, car_year, color)
VALUES  ('PK096I98581DHSNUB', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
		('ZM8G7BEUQZ97IH466', 'Peugeot', 'Rifter', 2019, 'Red'),
        ('RKXVNNIHLVVZOUB44', 'Ford', 'Fusion', 2018, 'White'),
        ('HKNDGS7CU31E9Z7JR', 'Toyota', 'RAV4', 2018, 'Silver'),
        ('DAM41UDN3CHU2WVF8', 'Volvo', 'V60', 2019, 'Gray'),
        ('DAM41UDN3CHU2WVF0', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_zipcode)
VALUES  (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera 14 Madrid Spain', 28045), 
		(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St Miami United States', 33130), 
        (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée Paris France', 75008);
        
INSERT INTO salespersons (staff_id, name, store)
VALUES  ('00001', 'Petey Cruiser', 'Madrid'),
		('00002','Anna Stheisa', 'Barcelona'),
        ('00003','Paul Molive', 'Berlin'),
        ('00004','Gail Forcewind', 'Paris'),
        ('00005','Paige Turner', 'Mimia'),
        ('00006','Bob Frapples', 'Mexico City'),
        ('00007','Walter Melon', 'Amsterdam'),
        ('00008','Shonda Leer', 'Sao Paulo'); 
        
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES  (852399038, '2018-08-22', 1, 1, 3),
		(731166526, '2018-12-31', 3, 3, 5), 
        (271135104, '2019-01-22', 2, 2, 7);	
        

