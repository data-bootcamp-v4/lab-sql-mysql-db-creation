USE mydb;



INSERT INTO Customers (Name, PhoneNumber, Email, Address, City, StateProvince, Country, ZipPostalCode)
VALUES
('Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO SalesPersons (Name, Store)
VALUES 
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');



INSERT INTO Invoices (Date, Car_ID, CustomerID, StaffID)
VALUES 
('2018-08-22', 1, 1, 3),
('2018-12-31', 3, 3, 5),
('2019-01-22', 2, 2, 7);
