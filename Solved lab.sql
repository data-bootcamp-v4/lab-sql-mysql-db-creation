USE lab_mysql;

-- Insertar datos en la tabla de automóviles
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'Blanco'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
('DAM41UDN3CHU2WVF6A', 'Volvo', 'V60', 2019, 'Gris'),
('DAM41UDN3CHU2WVF6B', 'Volvo', 'V60 Cross Country', 2019, 'Gris');

-- Insertar datos en la tabla de clientes
INSERT INTO customers (name, phone, email, address, city, state, country, postal_code) VALUES
('Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', '28045'),
('Abraham Lincoln', '+1 305 907 7086', 'lincoln@us.gov', '120 SW Calle 8', 'Miami', 'Florida', 'Estados Unidos', '33130'),
('Napoleón Bonaparte', '+33 1 79 75 40 00', 'hola@napoleon.me', '40 Calle del Coliseo', 'París', 'Isla de Francia', 'Francia', '75008');

-- Insertar datos en la tabla de vendedores
INSERT INTO salespersons (name, store) VALUES
('Cruiser Petey', 'Madrid'),
('Ana Estesia', 'Barcelona'),
('Pablo Molive', 'Berlín'),
('Gail Wind Force', 'París'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Ciudad de México'),
('Walter Melón', 'Ámsterdam'),
('Shonda Leer', 'San Pablo');

-- Insertar datos en la tabla de facturas
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
('852399038', '2018-08-22', 1, 1, 3),
('731166526', '2018-12-31', 3, 3, 5),
('271135104', '2019-01-22', 2, 2, 7);