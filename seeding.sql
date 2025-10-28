INSERT INTO cars(vin, manufacturer, model, year, color) VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "azul"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "rojo"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "blanco"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "gris"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "gris"),
("4UZ6B4Z8JQ5N9G1KP", "Kia", "Sportage", 2020, "negro");


INSERT INTO invoices (invoice_date, vin, customer_id, salesperson_id) VALUES
('2018-08-22', '3K096I98581DHSNUP', 1, 3),
('2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5),
('2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7);

INSERT INTO customers (Customer_name, Phone_number, Email, Address, City, State_province, Country, Postal_code) VALUES
('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salesperson(salesperson_name, Store) VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');
