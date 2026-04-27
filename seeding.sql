USE lab_mysql;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE facturas;
TRUNCATE TABLE vendedores;
TRUNCATE TABLE clientes;
TRUNCATE TABLE coches;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO coches (id, vin, fabricante, modelo, anio, color) VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
(3, 'RKXVNNIHLVVZOUB4M', 'Vado', 'Fusion', 2018, 'Blanco'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gris');

INSERT INTO clientes (id, nombre, ciudad) VALUES
(1, 'Pablo Picasso', 'Madrid'),
(2, 'Abraham Lincoln', 'Miami'),
(3, 'Napoleón Bonaparte', 'París');

INSERT INTO vendedores (id, nombre, ciudad) VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Pablo Molive', 'Berlina'),
(4, 'Gail Forcewind', 'París'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Ciudad de México'),
(7, 'Walter Melon', 'Ámsterdam'),
(8, 'Shonda Leer', 'São Paulo');

INSERT INTO facturas (id, numero_factura, fecha, coche_id, cliente_id, vendedor_id) VALUES
(1, '852399038', '2018-08-22', 1, 1, 3),
(2, '731166526', '2018-12-31', 3, 3, 5),
(3, '271135104', '2019-01-22', 2, 2, 7);