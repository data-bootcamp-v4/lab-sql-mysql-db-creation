USE lab_mysql;
SELECT * from cars_lab;


INSERT INTO cars_lab (VIN, manufacturer, model, year_c, colour)
	VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
       SET SQL_SAFE_UPDATES = 0;
       
       SELECT *
       FROM cars_lab;
       
	INSERT INTO customers (id_customer, customer_name, phone, email, address, city, estado_provincia, pais, zip)
	VALUES ('10001', 'Pablo Picasso', '+34 636 17 63 82', '-' , 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
    ('20001', 'Abraham Lincoln', '+1 305 907 7086', '-' , '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
    ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-' , '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
    
    SELECT *
       FROM customers;
	
    INSERT INTO salesperson (staff_id, staff_name, store)
	VALUES (00001, 'Petey Cruiser',	'Madrid'),
    (00002, 'Anna Sthesia',	'Barcelona'),
    (00003, 'Paul Molive',	'Berlin'),
    (00004, 'Gail Forcewind', 'Paris'),
    (00005, 'Paige Turner', 'Mimia'),
    (00006, 'Bob Frapples',	'Mexico City'),
    (00007, 'Walter Melon',	'Amsterdam'),
    (00008, 'Shonda Leer', 	'São Paulo');
    
    
    
     SELECT *
       FROM salesperson;
    
    INSERT INTO invoice (invoice_number, date_inv, id_car, id_customer, staff_id)
	VALUES('852399038', '20180822', 1, 1, 3),
    ('731166526', '20181231', 3, 3, 5),
    ('271135104', '20190122', 2, 2, 7);
    
SELECT *
       FROM invoice;
       



    
       
       

       
      