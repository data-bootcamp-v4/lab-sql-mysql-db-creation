-- Usar la base de datos
USE lab_mysql;

-- Insertar datos en la tabla Cars
INSERT INTO Cars (vin, manufacturer, model, year, color)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Insertar datos en la tabla Customers
INSERT INTO Customers (name, phone_number, email, address, city, state_province, country, postal_code)
VALUES 
    ('Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insertar datos en la tabla Salespersons
INSERT INTO Salespersons (name, store)
VALUES 
    ('Petey Cruiser', 'Madrid'),
    ('Anna Sthesia', 'Barcelona'),
    ('Paul Molive', 'Berlin'),
    ('Gail Forcewind', 'Paris'),
    ('Paige Turner', 'Miami'),
    ('Bob Frapples', 'Mexico City'),
    ('Walter Melon', 'Amsterdam'),
    ('Shonda Leer', 'São Paulo');

-- Insertar datos en la tabla Invoices
INSERT INTO Invoices (date, car_id, customer_id, salesperson_id)
VALUES 
    ('2018-08-22', 1, 1, 3),
    ('2018-12-31', 3, 3, 5),
    ('2019-01-22', 2, 2, 7);
