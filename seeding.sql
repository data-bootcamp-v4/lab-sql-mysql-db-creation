INSERT INTO clientes (
    id_cliente, nombre, teléfono, email,
    dirección, ciudad, estado, país, código_postal
)
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', '-',
     'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', '28045'),

    (20001, 'Abraham Lincoln', '+1 305 907 7086', '-',
     '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', '33130'),

    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-',
     '40 Rue du Colisée', 'Paris', 'Île-de-France', 'Francia', '75008');

SELECT* FROM clientes;

INSERT INTO vendedores (id_empleado, nombre, tienda)
VALUES
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind', 'Paris'),
    ('00005', 'Paige Turner', 'Mimia'),
    ('00006', 'Bob Frapples', 'Mexico City'),
    ('00007', 'Walter Melon', 'Amsterdam'),
    ('00008', 'Shonda Leer', 'São Paulo');
SELECT* FROM vendedores;

INSERT INTO coches (VIN, fabricante, modelo, año, color)
VALUES
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
SELECT* FROM coches;

INSERT INTO facturas (
    invoice, fecha, id_coche, id_cliente, id_empleado
)
VALUES
    (852399038, '2018-08-22', 1, 1, 3),
    (731166526, '2018-12-31', 3, 3, 5),
    (271135104, '2019-01-22', 2, 2, 7);
SELECT* FROM facturas;