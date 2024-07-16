CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO users (id, name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');
       
 CREATE TABLE IF NOT EXISTS Cars (
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(100),
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(100)
);      
   
 CREATE TABLE IF NOT EXISTS Customers (
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_ID INT,
    name VARCHAR(100),
    phone_number VARCHAR(100),
    email VARCHAR(100), 
    address VARCHAR(100), 
    city VARCHAR(100), 
    state_province VARCHAR(100), 
    country VARCHAR(100), 
    postal_code VARCHAR(100)
);   

  CREATE TABLE IF NOT EXISTS Salespersons (
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_ID VARCHAR(100), 
    name VARCHAR(100), 
    store VARCHAR(100)
); 

  CREATE TABLE IF NOT EXISTS Invoices (
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(100), 
    date VARCHAR(100), 
    car INT, 
    customer INT,  
    salesperson INT
); 

INSERT INTO Cars (id, VIN, manufacturer, model, year, color)
VALUES (1	,'3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',				2019,	'Blue'),
		(2	,'ZM8G7BEUQZ97IH46V',	'Peugeot',		'Rifter',				2019	,'Red'),
		(3	,'RKXVNNIHLVVZOUB4M',	'Ford',			'Fusion',				2018	,'White'),
		(4	,'HKNDGS7CU31E9Z7JW',	'Toyota',		'RAV4',					2018	,'Silver'),
		(5	,'DAM41UDN3CHU2WVF6',	'Volvo',		'V60',					2019	,'Gray'),
		(6	,'DAM41UDN3CHU2WVF6',	'Volvo',		'V60 Cross Country',	2019	,'Gray');
	
INSERT INTO Customers (ID, customer_ID, name, phone_number, email, address, city, state_province, country, postal_code)
VALUES 
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO Salespersons (ID, staff_ID, name, store)
VALUES 
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO Invoices (ID, invoice_number, date, car, customer, salesperson)
VALUES 
(1, 852399038, '2018-08-22', 1, 1, 3),
(2, 731166526, '2018-12-31', 3, 3, 5),
(3, 271135104, '2019-01-22', 2, 2, 7);
