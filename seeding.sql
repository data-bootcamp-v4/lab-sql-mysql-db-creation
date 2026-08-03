INSERT INTO Customers (Name, Email, Phone, Address, Zip_post)
VALUES
('Pablo Picasso', NULL, '+34 636 17 63 82', 'Paseo de la Chopera, 14', '28045'),
('Abraham Lincoln', NULL, '+1 305 907 7086', '120 SW 8th St', '33130'),
('Napoléon Bonaparte', NULL, '+33 1 79 75 40 00', '40 Rue du Colisée', '75008');

SELECT * FROM Customers;

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color, Price, Status)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 20000.00, 'Available'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 18000.00, 'Available'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 17000.00, 'Available'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 22000.00, 'Available'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 25000.00, 'Available'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 27000.00, 'Available');

SELECT * FROM Cars;

INSERT INTO Salespersons (Name, Staff_ID, Store_ID)
VALUES
('Petey Cruiser', 1, 1),
('Anna Sthesia', 2, 2),
('Paul Molive', 3, 3),
('Gail Forcewind', 4, 4),
('Paige Turner', 5, 5),
('Bob Frapples', 6, 6),
('Walter Melon', 7, 7),
('Shonda Leer', 8, 8);

SELECT * FROM Salespersons;


INSERT INTO Invoices (Invoice_Number, Date, Customer_ID, Car_ID, Salesperson_ID, Final_Price)
VALUES
('852399038', '2018-08-22', 1, 1, 3, 17500.00),
('731166526', '2018-12-31', 3, 3, 5, 16000.00),
('271135104', '2019-01-22', 2, 2, 7, 18500.00);

SELECT * FROM Invoices;


