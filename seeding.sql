
USE lab_mysql;

INSERT INTO Cars (idCars, Manufacturer, Model, Year, Color)
VALUES 
(1, 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'Ford', 'Fusion', 2018, 'White'),
(4, 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'Volvo', 'V60', 2019, 'Gray'),
(6, 'Volvo', 'V60 Cross Country', 2019, 'Gray');


INSERT INTO Customers (idCustomers, Name, PhoneNumber, Email, Address, City, Province, Country, ZIP)
VALUES
(1, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO Salesperson (idSalesperson, Name, Store)
VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Miami'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');


INSERT INTO Invoices (idInvoices, Date, idCars, idCustomers, idSalesperson)
VALUES
(1, '2018-08-22', 1, 1, 3),
(2, '2018-12-31', 3, 3, 5),
(3, '2019-01-22', 2, 2, 7);
