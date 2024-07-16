USE lab_mysql;

-- Insert data into Cars table
INSERT INTO Cars (VIN, Manufacturer, Model, Man_Year, Color)
VALUES
('K096I98581DHSNUP', 'Volkswagen',	'Tiguan', '2019', 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018',	'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota',	'RAV4',	'2018',	'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo',	'V60', '2019', 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo',	'V60 Cross Country', '2019', 'Gray');

-- Insert data into Customers table
INSERT INTO Customers  (CustomerID, CustomerName, PhoneNumber, Email, Address, City, StateProvince, Country, ZipPostalCode)
VALUES
('10001', 'Pablo Picasso', '+34 636 17 63 82',	'-', 'Paseo de la Chopera 14',	'Madrid', 'Madrid',	'Spain', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086',	'-', '120 SW 8th St',	'Miami',	'Florida',	'United States', '33130'),
('30001', 'Napoléon Bonaparte',	'+33 1 79 75 40 00', '-', '40 Rue du Colisée',	'Paris', 'Île-de-France', 'France',	'75008');
ALTER TABLE Customers AUTO_INCREMENT = 0;

-- Insert data into Salespersons table
INSERT INTO Salespersons (StaffID, StaffName, Store)
VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia',	'Barcelona'),
('00003', 'Paul Molive',	'Berlin'),
('00004', 'Gail Forcewind',	'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples',	'Mexico City'),
('00007', 'Walter Melon',	'Amsterdam'),
('00008', 'Shonda Leer',	'São Paulo');

-- Insert data into Invoices table
-- Note: Make sure that CarID, CustomerID, and SalespersonID correspond to actual IDs from the previous inserts
INSERT INTO Invoices (InvoiceNumber, InvoiceDate, Car, Customer, Salesperson)
VALUES

(852399038,	STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 1, 1, 3),
(731166526,	STR_TO_DATE('31-12-2018','%d-%m-%Y'), 3, 3, 5),
(271135104,	STR_TO_DATE('22-01-2019','%d-%m-%Y'), 2, 2, 7);
