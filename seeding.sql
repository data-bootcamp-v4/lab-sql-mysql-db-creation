USE lab_mysql;

-- 1. Desactivar la verificación de claves foráneas
SET FOREIGN_KEY_CHECKS = 0; 

-- 2. Truncar las tablas (¡El orden ahora no importa!)
TRUNCATE TABLE invoices;
TRUNCATE TABLE cars;
TRUNCATE TABLE customers;
TRUNCATE TABLE sales_persons;

-- 3. Insertar los datos (tu código INSERT INTO aquí...)

-- 4. Reactivar la verificación de claves foráneas
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO cars (manufacturer, VIN, model, year, color) VALUES
('Volkswagen', '3K096I98581DHSNUP', 'Tiguan', 2019, 'Blue'),
('Peugeot', 'ZM8G7BEUQZ97IH46V', 'Rifter', 2019, 'Red'),
('Ford', 'RKXVNNIHLVVZOUB4M', 'Fusion', 2018, 'White'),
('Toyota', 'HKNDGS7CU31E9Z7JW', 'RAV4', 2018, 'Silver'),
('Volvo', 'DAM41UDN3CHU2WVF6', 'V60', 2019, 'Gray');
-- IDs generados: 1, 2, 3, 4, 5, 6

-- 2. INSERT INTO customers
-- Columnas ajustadas para: phone_number, state_province, zip_postal_code
INSERT INTO customers (name, phone_number, email, address, city, state_province, country, zip_postal_code) VALUES
('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
-- IDs generados: 1, 2, 3

-- 3. INSERT INTO sales_persons
-- Columnas son: name, store
INSERT INTO sales_persons (name, store) VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');
-- IDs generados: 1, 2, 3, 4, 5, 6, 7, 8

-- 4. INSERT INTO invoices
-- Columnas ajustadas para: car_id_fk, customer_id_fk, sales_person_id_fk
INSERT INTO invoices (invoice_date, sale_price, car_id_fk, customer_id_fk, sales_person_id_fk) VALUES
('2018-08-22', 25000.00, 1, 1, 3), 
('2018-12-31', 21000.00, 3, 3, 5),
('2019-01-22', 18500.00, 2, 2, 7);