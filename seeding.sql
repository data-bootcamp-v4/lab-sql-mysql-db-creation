USE lab_mysql;

-- Insert into car
INSERT INTO car (ID, VIN, Manufacturer, Model, Year, Color)  
VALUES 
    (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),  
    (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),  
    (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),  
    (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),  
    (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),  
    (6, 'DAM41UDN3CHU2WVF68', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

-- Insert into customers
INSERT INTO customers (ID, Customer_ID, Name, PhoneNumber, Email, Address, City, State_Province, Country, ZipCode)  
VALUES
    (3, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    (4, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    (5, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert into salespersons
INSERT INTO salespersons (ID, StaffID, Name, Store)  
VALUES 
    (9, '00001', 'Petey Cruiser', 'Madrid'),
    (10, '00002', 'Anna Sthesia', 'Barcelona'),
    (11, '00003', 'Paul Molive', 'Berlin'),
    (12, '00004', 'Gail Forcewind', 'Paris'),
    (13, '00005', 'Paige Turner', 'Miami'),
    (14, '00006', 'Bob Frapples', 'Mexico City'),
    (15, '00007', 'Walter Melon', 'Amsterdam'),
    (16, '00008', 'Shonda Leer', 'São Paulo');

-- Insert into invoices with correct VIN, Customer_ID, and StaffID
INSERT INTO invoices (ID, InvoiceID, Date, VIN, Customer_ID, StaffID)  
VALUES  
    (6, 852399038, '2018-08-22', '3K096I98581DHSNUP', 10001, '00003'),  
    (7, 731166526, '2018-12-31', 'RKXVNNIHLVVZOUB4M', 30001, '00005'),  
    (8, 271135104, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 20001, '00007');
