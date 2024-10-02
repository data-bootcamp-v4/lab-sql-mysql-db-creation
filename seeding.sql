INSERT INTO Customers (CustomerID, Name, PhoneNumber, Email, Address, City, State, Country, ZipCode) 
VALUES ('10001', 'Pablo Picasso', '+34636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       ('20001', 'Abraham Lincoln', '+13059077086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       ('30001', 'Napoléon Bonaparte', '+33179754000', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

    INSERT INTO Salespersons (StaffID, Name, Store)
VALUES ('00001', 'Petey Cruiser', 'Madrid'),
       ('00002', 'Anna Sthesia', 'Barcelona'),
       ('00003', 'Paul Molive', 'Berlin'),
       ('00004', 'Gail Forcewind', 'Paris'),
       ('00005', 'Paige Turner', 'Mimia'),
       ('00006', 'Bob Frapples', 'Mexico City'),
       ('00007', 'Walter Melon', 'Amsterdam'),
       ('00008', 'Shonda Leer', 'São Paulo');
    
INSERT INTO Cars (VIN, Manufacturer, Model, CarYear, Color)
VALUES ('0012345678901234', 'Toyota', 'Corolla', 2020, 'Red'),
       ('0098765432109876', 'Honda', 'Civic', 2019, 'Blue'),
       ('0054321098765432', 'Ford', 'Mustang', 2021, 'Black'),
       ('0011223344556677', 'BMW', 'X5', 2022, 'White'),
       ('0011223344556688', 'Tesla', 'Model 3', 2023, 'Silver');
    
INSERT INTO Invoices (InvoiceNumber, InvoiceDate, Car, Customer, Salesperson)
VALUES (852399038, '2018-08-22', 0012345678901234, 10001, 00003),
       (731166526, '2018-12-31', 0054321098765432, 30001, 00005),
       (271135104, '2019-01-22', 0098765432109876, 20001, 00007);

SELECT * FROM Customers;
SELECT * FROM Salespersons;
SELECT * FROM Cars;
SELECT * FROM Invoices;
    
