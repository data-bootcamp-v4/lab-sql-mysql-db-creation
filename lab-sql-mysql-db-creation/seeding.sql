insert into cars (
vin, 
manufacturer, 
model, 
year_of_manufacture,
color
)
values (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, Azul),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
(3,	'RKXVNNIHLVVZOUB4M', 'Vado', 'Fusión', 2018, 'Blanco'),
(4,	'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
(5,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
(6,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Campo Traviesa',	2019, 'Gris');

insert into customers (
client_id,
client_name,
phone_number,
email,
direction,
city,
province,
coutry,
post_code
)

values (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', 28045),
(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW Calle 8', 'Miami', 'Florida', 'Estados Unidos', 33130),
(2,	30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', '-', '40 Calle del Coliseo', 'París',	'Isla de Francia', 'Francia', 75008);


insert into bill (bill_id, bill_number, emision_date, vin, client_id, salesperson_id)

values (1, 852399038, 22-08-2018, 1, 1,	3),
(2,	'731166526', 31-12-2018, 3, 3, 5),
(3,	'271135104', 22-01-2019, 2, 2, 7);


insert into salespersons (employed_id, salesperson_id, salesperson_name, shop)

values (1, 00001, 'Crucero Petey', 'Madrid'),
(2,	00002, 'Ana Estesia', 'Barcelona'),
(3,	00003, 'Pablo Molive', 'Berlina'),
(4,	00004, 'Gail Viento de Fuerza',	'París'),
(5,	00005, 'Paige Turner', 'Mimi'),
(6,	00006, 'Bob Frapples', 'Ciudad de México'),
(7,	00007, 'Walter Melón', 'Ámsterdam'),
(8,	00008, 'Shonda Leer	San', 'Pablo');






