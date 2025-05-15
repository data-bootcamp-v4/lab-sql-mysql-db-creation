USE lab_mysql;

-- Sembrar cars
INSERT INTO cars (VIN, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
('RKXVNNIHLVVZOUB4M', 'Vado', 'Fusión', 2018, 'Blanco'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Campo a Través', 2019, 'Gris');

-- Sembrar customers
INSERT INTO customers (customer_id, name, phone_number, email, address, city, state_province, country, postal_code) VALUES
('10001', 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', '33130'),
('30001', 'Napoleón Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'París', 'Isla de Francia', 'Francia', '75008');

-- Sembrar salespersons
INSERT INTO salespersons (staff_id, name, store) VALUES
('00001', 'Crucero Petey', 'Madrid'),
('00002', 'Ana Sthesia', 'Barcelona'),
('00003', 'Pablo Molive', 'Berlina'),
('00004', 'Gail Forcewind', 'París'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Ciudad de México'),
('00007', 'Walter Melón', 'Ámsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- Sembrar invoices
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;

SELECT car_id, VIN FROM cars;
SELECT customer_record_id, name FROM customers;
SELECT salesperson_record_id, name FROM salespersons;

INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_record_id, salesperson_record_id) VALUES
('852399038', '2018-08-22', 7, 1, 3),
('731166526', '2018-12-31', 9, 2, 5),
('271135104', '2019-01-22', 8, 3, 7);