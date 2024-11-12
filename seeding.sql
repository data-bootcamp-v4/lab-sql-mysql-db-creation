

-- 1. Insert into Cars table first
INSERT INTO Cars (vin, manufacturer, model, year, color)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');
-- 2. Insert into Customers table second
INSERT INTO Customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES 
    (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    (20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- 3. Insert into Salespersons table third
INSERT INTO Salespersons (staff_id, name, store)
VALUES 
    (00001, 'Petey Cruiser', 'Madrid'),
    (00002, 'Anna Sthesia', 'Barcelona'),
    (00003, 'Paul Molive', 'Berlin'),
    (00004, 'Gail Forcewind', 'Paris'),
    (00005, 'Paige Turner', 'Miami'),
    (00006, 'Bob Frapples', 'Mexico City'),
    (00007, 'Walter Melon', 'Amsterdam'),
    (00008, 'Shonda Leer', 'São Paulo');

-- 4. Insert into Invoices table last (after Cars, Customers, and Salespersons)
INSERT INTO Invoices (invoice_number, date, car, customer, salesperson)
VALUES
    (852399038, '2018-08-22', 1, 1, 3),  -- Car ID 1, Customer ID 1, Salesperson ID 3
    (731166526, '2018-12-31', 3, 3, 5),  -- Car ID 3, Customer ID 3, Salesperson ID 5
    (271135104, '2019-01-22', 2, 2, 7);  -- Car ID 2, Customer ID 2, Salesperson ID 7

SELECT * FROM Cars;
SELECT * FROM Customers;
SELECT * FROM Salespersons;
select * FROM Invoices;
SELECT * FROM Invoices WHERE invoice_number IN (852399038, 731166526, 271135104);
