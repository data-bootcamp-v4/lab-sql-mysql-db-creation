#challenge 3:
-- Insert Data into the Cars Table
INSERT INTO Cars (VIN, manufacturer, model, year, color)
VALUES
    ('3K09', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXV', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNG', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM4', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAMN8', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Insert Data into the Customers Table
INSERT INTO Customers (name, phone, email, address, city, state, country, zip_code)
VALUES
    ('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert Data into the Salespersons Table
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

-- Insert Data into the Invoices Table
INSERT INTO Invoices (date, car_id, customer_id, salesperson_id)
VALUES
    ('2018-08-22', 1, 1, 3),
    ('2018-12-31', 3, 3, 5),
    ('2019-01-22', 2, 2, 7);
    
SELECT * FROM Cars;