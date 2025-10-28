SELECT *
FROM coche;

INSERT INTO coche (id_coches, fabricante, modelo, año, color)
VALUES  ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
		('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
        ('RKXVNNIHLVVZOUB4M', 'Vado', 'Fusión', 2018, 'Blanco'),
        ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
        ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019,	'Gris'),
        ('DAM41UDN3CHU2WVF7', 'Volvo', 'V60, Campo a través', 2019,	'Gris');

SELECT * 
FROM cliente; 

INSERT INTO clientes 
(id_cliente, nombre, telefono, correo_electronico, direccion, ciudad, estado_provincia, pais, codigo_postal)
VALUES
		(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', '28045'),
		(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', '33130'),
		(30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'París', 'Isla de Francia', 'Francia', '75008');

SELECT *
FROM vendedores;

INSERT INTO vendedores (id_personal, nombre, tienda)
VALUES
(1, 'Crucero Petey', 'Madrid'),
(2, 'Ana Sthesia', 'Barcelona'),
(3, 'Pablo Molive', 'Berlina'),
(4, 'Gail Forcewind', 'París'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Ciudad de México'),
(7, 'Walter Melón', 'Ámsterdam'),
(8, 'Shonda Leer', 'São Paulo');

SELECT *
FROM factura;

INSERT INTO factura (num_factura, fecha, id_coche, id_cliente, id_personal)
VALUES
('852399038', '2018-08-22', '1', 10001, 3),
('731166526', '2018-12-31', '3', 30001, 5),
('271135104', '2019-01-22', '2', 20001, 7);



