CREATE DATABASE  IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE CARS;
CREATE TABLE IF NOT EXISTS CARS(
    ID INT PRIMARY KEY,
    VIN VARCHAR(20),
    FABRICANTE VARCHAR(20),
    MODELO  VARCHAR(50),
    AÑO YEAR,
    COLOR VARCHAR(20)
  );

  INSERT INTO cars
  (ID, VIN,FABRICANTE,MODELO,AÑO,COLOR)
  VALUES
  (1,'3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Azul'),
  (2, 'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Rojo'),
  (3, 'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Rojo'),
  (4, 'HKNDGS7CU31E9Z7JW',	'Toyota',	 'RAV4', 2018, 'Plata'),
  (5, 'DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	2019,	'Gris'),
  (6, 'DAM41UDN3CHU2WVF6',	'Volvo', 	'V60 Cross Country',	2019,	'Gris');
  
  DROP TABLE clientes;
  CREATE TABLE IF NOT EXISTS clientes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    Cust_id INT UNIQUE,
    nombre_cliente VARCHAR(100),
    cust_phone VARCHAR(30),
    email_cliente VARCHAR(100),
    direccion_cliente VARCHAR(150),
    cust_city VARCHAR(50),
    estado_cliente VARCHAR(50)
  );

  INSERT INTO clientes
(id, cust_id, nombre_clientes, cust_phone, email_cliente,
 direccion_cliente, cust_city, estado_cliente)
VALUES
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-',
 'Paseo de la Chopera 14', 'Madrid', 'España 28045'),
(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-',
 '120 SW 8th St', 'Miami', 'Florida, Estados Unidos 33130'),
(2, 30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', '-',
 '40 Rue du Colisée', 'París', 'Île-de-France, Francia 75008');

  DROP TABLE  IF EXISTS vendedores;

  CREATE TABLE vendedores(
    id INT PRIMARY KEY,
    staff_id VARCHAR(5)  UNIQUE,
    nombre VARCHAR(20),
    tienda VARCHAR(20)
  );

  INSERT INTO vendedores
  (id,staff_id, nombre, tienda)
  VALUES
  (1, '00001',	'Petey Cruiser',	'Madrid'),
  (2, '00002', 'Anna Sthesia',	'Barcelona'),
  (3, '00003',	'Paul Molive',	'Berlín'),
  (4, '00004',	'Gail Forcewind',	'París'),
  (5, '00005',	'Paige Turner', 	'Mimia'),
  (6, '00006',	'Bob Frapples',	'Ciudad de México'),
  (7, '00007',	'Walter Melon',	'Ámsterdam'),
  (8, '00008',	'Shonda Leer',	'São Paulo');

DROP TABLE IF EXISTS facturas;

CREATE TABLE facturas (
    id INT PRIMARY KEY,
    numero_de_factura BIGINT UNIQUE,
    fecha DATE,
    coche INT,
    cliente INT,
    vendedor INT
);

INSERT INTO facturas (id, numero_de_factura, fecha, coche, cliente, vendedor)
VALUES
    (1, 852399038, '2018-08-22', 1, 1, 3),
    (2, 731166526, '2018-12-31', 3, 3, 5),
    (3, 271135104, '2019-01-22', 2, 2, 7);

SHOW TABLES;

DESCRIBE clientes;

UPDATE clientes
SET email_cliente = 'ppicasso@gmail.com'
WHERE nombre_cliente = 'Pablo Picasso';

UPDATE clientes
SET email_cliente = 'lincoln@us.gov'
WHERE nombre_cliente = 'Abraham Lincoln';

UPDATE clientes
SET email_cliente = 'hello@napoleon.me'
WHERE nombre_cliente = 'Napoleón Bonaparte';

DESCRIBE cars;

DELETE FROM cars
WHERE ID = 4
  AND VIN = 'DAM41UDN3CHU2WVF6';

SELECT *
FROM cars
WHERE ID = 4
  AND VIN = 'DAM41UDN3CHU2WVF6';  

