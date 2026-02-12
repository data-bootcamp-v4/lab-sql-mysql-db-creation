USE autocar;
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'azul'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'rojo'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'blanco'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'gris'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'gris'),
('DAX41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'gris');

INSERT INTO customers (Customer_name, Phone_number, Email, Address, City, State_province, Country, Postal_code) VALUES
('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (Salesperson_name, Store) VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');

INSERT INTO invoices (Invoice_date, VIN, Customer_ID, Staff_ID) VALUES
('2018-08-22', '3K096I98581DHSNUP', 1, 3),
('2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5),
('2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7);

