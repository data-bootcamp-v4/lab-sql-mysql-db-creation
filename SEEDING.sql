USE lab_mysql;

-- Insertar coches
INSERT INTO cars (vin, make, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'Blanco'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gris');

-- Insertar clientes
INSERT INTO customers (customer_id, name, phone, email, address, city, state, country, postal_code) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', '33130'),
(30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'París', 'Isla de Francia', 'Francia', '75008');

-- Insertar vendedores
INSERT INTO salespersons (staff_id, name, store) VALUES
(1, 'Crucero Petey', 'Madrid'),
(2, 'Ana Sthesia', 'Barcelona'),
(3, 'Pablo Molive', 'Berlina'),
(4, 'Gail Forcewind', 'París'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Ciudad de México'),
(7, 'Walter Melón', 'Ámsterdam'),
(8, 'Shonda Leer', 'São Paulo');

-- Insertar facturas
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 3, 5),
(271135104, '2019-01-22', 2, 2, 7);
