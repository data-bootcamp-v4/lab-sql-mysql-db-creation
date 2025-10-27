USE lab_mysql; 

INSERT INTO coches (id_coche_VIN, fabricante, modelo, año, color)
	VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
		   ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019,	'Rojo'),
	       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'Blanco'),
           ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4',	2018, 'Plata'),
           ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris');
           
INSERT INTO clientes (id_cliente, nombre, telefono, email, direccion, ciudad, estado, pais, codigo_postal)
	VALUES (10001, 'Pablo Picasso',	'+34 636 17 63 82',	'-',	'Paseo de la Chopera, 14',	'Madrid', 'Madrid',	'España', '28045'),
           (20001,	'Abraham Lincoln', '+1 305 907 7086', '-',	'120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', '33130'),
           (30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'París', 'Isla de Francia', 'Francia', '75008');
           
INSERT INTO vendedores (id_personal, nombre, almacen)
	VALUES (00001, 'Crucero Petey',	'Madrid'),
		   (00002,	'Ana Sthesia', 'Barcelona'),
	       (00003,	'Pablo Molive',	'Berlina'),
	       (00004,	'Gail Forcewind', 'París'),
	       (00005,	'Paige Turner',	'Miami'),
		   (00006,	'Bob Frapples',	'Ciudad de México'),
	       (00007,	'Walter Melón',	'Ámsterdam'),
	       (00008,	'Shonda Leer',	'São Paulo');
          
INSERT INTO facturas (numero_factura, fecha, coche, cliente, vendedor)
			VALUES (852399038,	'2018-08-22',	1,	1,	3),
				   (731166526,	'2018-12-31',	3,	3,	5),
	               (271135104,	'2019-01-22',	2,	2,	7);