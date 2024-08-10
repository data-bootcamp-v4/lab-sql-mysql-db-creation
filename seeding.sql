use lab_mysql;
SET SQL_SAFE_UPDATES = 0;
-- Insert records into the Cars table
INSERT INTO Cars (VIN, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

-- Insert records into the Customers table
INSERT INTO Customers (CustomerID, name, phone_number, email, address, city, state_province, country, zip_postal_code) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France','France', '75008');

-- Insert records into the Salespersons table
INSERT INTO Salespersons (StaffID, name, store) VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');


-- Insert records into the Invoices table
INSERT INTO Invoices (InvoiceNumber, date, Car_VIN, CustomerID, StaffID) VALUES
(1, '2018-08-22', '3K096I98581DHSNUP', 1, 3),
(2, '2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5),
(3, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7);