-- Challenge 3 - Seeding the Database
-- Connect the Database
USE lab_mysql;

-- Insert data into cars table
INSERT INTO cars (id, vin, manufacturer, model, car_year, color)
	VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
			(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
            (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
            (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
            (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
            (6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
            

-- Select everything from cars table            
SELECT *
FROM cars;

            
-- Insert data into customers table
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
	VALUES (10001, 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
			(20001, 'Abraham Lincoln', '+1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
            (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
		

-- Select everything from customers table            
SELECT *
FROM customers;

-- Insert data into salespersons table
INSERT INTO salespersons (staff_id, staff_name, store)
	VALUES (00001, 'Petey Cruiser', 'Madrid'),
			(00002, 'Anna Sthesia', 'Barcelona'),
            (00003, 'Paul Molive', 'Berlin'),
            (00004, 'Gail Forcewind', 'Paris'),
            (00005, 'Paige Turner', 'Mimia'),
            (00006, 'Bob Frapples', 'Mexico City'),
            (00007, 'Walter Melon', 'Amsterdam'),
            (00008, 'Shonda Leer', 'São Paulo');
            
-- Select everything from salespersons table            
SELECT *
FROM salespersons;

-- Change type of date for invoices table
ALTER TABLE invoices
MODIFY COLUMN invoice_date DATE;

-- Insert data into invoices table
INSERT INTO invoices (invoice_number, invoice_date, cars_id, customer_id, salesperson_id)
	VALUES (852399038, '2018-08-22',1, 1, 3),
			(731166526, '2018-12-31',3, 3, 5),
            (271135104, '2019-01-22',2, 2, 7);

-- Select everything from invoices table            
SELECT *
FROM invoices;
