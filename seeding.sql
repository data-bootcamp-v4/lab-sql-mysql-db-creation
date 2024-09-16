USE lab_mysql;

-- Creación de tablas insertando datos: cars

INSERT INTO cars (VIN, Manufacturer, Model, Year, Color)
VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusión', 2018, 'Blanco'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
('PRESA41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
('PRESA41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gris');

-- Insertar datos en Customers 

INSERT INTO customers (CustomerID, Name, PhoneNumber, Email, Address, City, StateProvince, Country, PostalCode)
VALUES 
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14 años', 'Madrid', 'Madrid', 'España', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', 'Rue du Colisée 40', 'París', 'Île-de-France', 'Francia', '75008');

-- Insertar datos en Salespersons

INSERT INTO salespersons (SalespersonID, Name, Store)
VALUES 
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlín'),
(4, 'Gail Forcewind', 'París'),
(5, 'Turner Paige', 'Miami'),
(6, 'Bob Frapples', 'Ciudad de México'),
(7, 'Walter Melón', 'Amsterdam'),
(8, 'Leer Shonda', 'São Paulo');

-- Insertar invoces

INSERT INTO invoices (InvoiceID, Date, VIN, CustomerID, SalespersonID)
VALUES 
(1, '2018-08-22', '3K096I98581DHSNUP', 1, 3), 
(2, '2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5), 
(3, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7); 