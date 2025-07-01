-- Select the correct database
USE lab_mysql;

-- Insert data into 'cars' table
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAM41UDN3CHU2WVF5', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Insert data into 'customers' table
INSERT INTO customers (customer_id, name, phone_nr, email, address, city, state_province, country, zip_postal_code)
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    (20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert data into 'salespersons' table
INSERT INTO salespersons (staff_id, name, store)
VALUES
    (1, 'Petey Cruiser', 'Madrid'),
    (2, 'Anna Sthesia', 'Barcelona'),
    (3, 'Paul Molive', 'Berlin'),
    (4, 'Gail Forcewind', 'Paris'),
    (5, 'Paige Turner', 'Mimia'),
    (6, 'Bob Frapples', 'Mexico City'),
    (7, 'Walter Melon', 'Amsterdam'),
    (8, 'Shonda Leer', 'São Paulo');

-- Insert data into 'invoices' table
INSERT INTO invoices (date, vin, customer_id, staff_id)
VALUES
    ('2018-08-22', '3K096I98581DHSNUP', 10001, 1),
    ('2018-12-31', 'ZM8G7BEUQZ97IH46V', 30001, 3),
    ('2019-01-22', 'RKXVNNIHLVVZOUB4M', 20001, 2);
