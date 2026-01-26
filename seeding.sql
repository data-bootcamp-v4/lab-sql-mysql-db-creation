INSERT INTO cars (vin, fabricante, modelo, año, color, stock) VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'azul', 1),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'rojo', 1),
('RKXVNNIHLVVZOUB4M', 'Vado', 'Fusión', 2018, 'blanco', 1),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'gris', 1), 
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'gris', 1),
('DAM41UDN3CHU2WVF6_2', 'Volvo', 'V60 Campo a través', 2019, 'gris', 1);

INSERT INTO customers (id_cliente, nombre, telefono, mail, direccion, ciudad, provincia, pais, codigo_postal) VALUES 
(10001, 'Pablo Picasso', 34636176382, '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', 28045),
(20001, 'Abraham Lincoln', 13059077086, '', '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', 33130),
(30001, 'Napoleón Bonaparte', 33179754000, '', '40 Rue du Colisée', 'París', 'Isla de Francia', 'Francia', 75008);

INSERT INTO sales_persons (id_personal, nombre, tienda) VALUES 
(1, 'Crucero Petey', 'Madrid'),
(2, 'Ana Sthesia', 'Barcelona'),
(3, 'Pablo Molive', 'Berlina'),
(4, 'Gail Forcewind', 'París'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Ciudad de México'),
(7, 'Walter Melón', 'Ámsterdam'),
(8, 'Shonda Leer', 'São Paulo');


INSERT INTO invoices (num_factura, fecha, id_auto, id_cliente, id_personal) VALUES 
(852399038, '2018-08-22 00:00:00', 1, 10001, 3),
(731166526, '2018-12-31 00:00:00', 3, 30001, 5),
(271135104, '2019-01-22 00:00:00', 2, 20001, 7);


