
USE lab_mysql;
	DROP TABLE IF EXISTS custormers;
    INSERT INTO customers (customerID, name_customer, email)
	VALUES (1, 'John Doe', 'johndoe@example.com'),
	       (2, 'Jane Smith', 'janesmith@example.com'),
	       (3, 'Bob Johnson', 'bobjohnson@example.com');
	INSERT INTO cars (vin, manufacturer, model, year, color)
	VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
			('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
			('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
			('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
			('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
			('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Country', 2019, 'Gray');
            
	INSERT INTO customers (customersID, name_customers, phone_number, email, address, city, state_province, country, zip_postal_code)
	VALUES	(10001, 'Pablo Picasso', 34636176382, 'Paseo de la Chopera', 14,  'Madrid', 'Madrid', 'Spain', 28045),
			(20001, 'Abraham Lincoln', 13059077086, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
			(30001, 'Napoléon Bonaparte', 33179754000, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

	INSERT INTO Salespersons (staffID, name_salesperson, store)
    VALUES  (00001, 'Petey Cruiser', 'Madrid'),
			(00002, 'Anna Sthesia','Barcelona'),
			(00003, 'Paul Molive', 'Berlin'),
			(00004, 'Gail Forcewind', 'Paris'),
			(00005, 'Paige Turner', 'Mimia'),
			(00006, 'Bob Frapples', 'Mexico City'),
			(00007, 'Walter Melon', 'Amsterdam'),
			(00008, 'Shonda Leer', 'São Paulo');
            
            
	INSERT INTO invoices (invoice_number, date, model_car, customerID, name_salesperson)
    VALUES (852399038, 22-08-2018, 1, 1, 3),
			(731166526, 31-12-2018, 3, 3, 5),
			(271135104, 22-01-2019, 2, 2, 7);