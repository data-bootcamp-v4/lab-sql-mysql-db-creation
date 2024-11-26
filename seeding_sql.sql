-- Llamamos a la BBDD que queremos utilizar

USE lab_mysql;

INSERT INTO coches (
coche_pkid, 
fabricante, 
modelo, 
año, 
color
)
VALUES (
'3K096I98581DHSNUP', 
'Volkswagen',
'Tiguan',
2019,
'Azul'
),
(
'ZM8G7BEUQZ97IH46V',
'Peugeot',
'Rifter',
2019,
'Rojo'
),
(
'RKXVNNIHLVVZOUB4M',
'Vado',
'Fusión',
2018,
'Blanco'
),
(
'HKNDGS7CU31E9Z7JW',
'Toyota',
'RAV4',
2018,
'Plata'
),
(
'DAM41UDN3CHU2WVF6',
'Volvo',
'V60',
2019,
'Gris'
),
(
'DAM41UDN3CHU2WVF6',
'Volvo',
'V60 Campo Traviesa',
2019,
'Gris'
);

INSERT INTO clientes(
cliente_pkid,
nombre,
telefono,
correo,
direccion,
ciudad,
provincia,
pais,
codigo_postal
)
VALUES (
10001,
'Pablo Picasso',
'+34 636 17 63 82',
'-',
'Paseo de la Chopera, 14',
'Madrid',
'Madrid',
'España',
'28045'
),
(
20001,
'Abraham Lincoln',
'+1 305 907 7086',
'-',
'120 SW Calle 8',
'Miami',
'Florida',
'Estados Unidos',
'33130'
),
(
30001,
'Napoleón Bonaparte',
'+33 1 79 75 40 00',
'-',
'40 Calle del Coliseo',
'París',
'Isla de Francia',
'Francia',
'75008'
);

INSERT INTO vendedores (
vendedor_pkid,
nombre,
tienda
)
VALUES (
00001,
'Crucero Petey',
'Madrid'
),
(
00002,
'Ana Estesia',
'Barcelona'
),
(
00003,
'Pablo Molive',
'Berlina'
),
(
00004,
'Gail Viento de Fuerza',
'París'
),
(
00005,
'Paige Turner',
'Mimia'
),
(00006,
'Bob Frapples',
'Ciudad de México'
),
(00007,
'Walter Melón',
'Ámsterdam'
),
(
00008,
'Shonda Leer',
'San Pablo'
);

INSERT INTO facturas (
    factura_pkid,
    fecha,
    cliente_id_pk,
    vendedor_id_pk,
    coche_id_pk
)
VALUES
    (852399038, '2018-08-22', 1, 3, 1),
    (731166526, '2018-12-31', 3, 5, 3),
    (271135104, '2019-01-22', 2, 7, 2);

SELECT *
FROM facturas;

SELECT *
FROM clientes;

SELECT *
FROM vendedores;

SELECT *
FROM coches;
