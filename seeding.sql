-- =====================================================================
-- seeding.sql: datos iniciales
-- Orden: primero las tablas "padre" (cars, customers, salespersons) y al final
-- invoices, porque sus claves foráneas exigen que los registros ya existan.
-- =====================================================================
USE lab_mysql;

-- ---------------------------------------------------------------------
-- cars
-- ---------------------------------------------------------------------
-- No escribo el id: AUTO_INCREMENT lo asigna solo (1, 2, 3...), igual que en la tabla de ejemplo.
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',            2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot',    'Rifter',            2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford',       'Fusion',            2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota',     'RAV4',              2018, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo',      'V60',               2019, 'Gray'),
       ('DAM41UDN3CHU2WVF6', 'Volvo',      'V60 Cross Country', 2019, 'Gray');

-- ---------------------------------------------------------------------
-- customers
-- ---------------------------------------------------------------------
-- En la tabla de ejemplo los ids de clientes empiezan en 0, pero las facturas usan los
-- clientes 1, 2 y 3. Dejo que AUTO_INCREMENT asigne 1, 2 y 3; así las facturas encajan.
-- (Además, en MySQL insertar un 0 en una columna AUTO_INCREMENT genera un id nuevo en vez de guardar 0.)
-- El email viene como "-": lo guardo como NULL, que es cómo SQL representa "sin dato".
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES (10001, 'Pablo Picasso',      '+34 636 17 63 82',  NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid',        'Spain',         '28045'),
       (20001, 'Abraham Lincoln',    '+1 305 907 7086',   NULL, '120 SW 8th St',           'Miami',  'Florida',       'United States', '33130'),
       (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée',       'Paris',  'Île-de-France', 'France',        '75008');

-- ---------------------------------------------------------------------
-- salespersons
-- ---------------------------------------------------------------------
-- Corrijo la errata "Mimia" -> "Miami" de la tabla de ejemplo.
INSERT INTO salespersons (staff_id, name, store)
VALUES ('00001', 'Petey Cruiser',  'Madrid'),
       ('00002', 'Anna Sthesia',   'Barcelona'),
       ('00003', 'Paul Molive',    'Berlin'),
       ('00004', 'Gail Forcewind', 'Paris'),
       ('00005', 'Paige Turner',   'Miami'),
       ('00006', 'Bob Frapples',   'Mexico City'),
       ('00007', 'Walter Melon',   'Amsterdam'),
       ('00008', 'Shonda Leer',    'São Paulo');

-- ---------------------------------------------------------------------
-- invoices
-- ---------------------------------------------------------------------
-- Las fechas vienen como día-mes-año (22-08-2018), pero MySQL guarda las fechas como
-- año-mes-día. STR_TO_DATE convierte el texto indicando su formato: %d-%m-%Y.
-- Alternativa: escribir directamente '2018-08-22'. Uso STR_TO_DATE para respetar los datos originales.
INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, salesperson_id)
VALUES (852399038, STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 1, 1, 3),
       (731166526, STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 3, 3, 5),
       (271135104, STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 2, 2, 7);

-- Comprobación: cada factura con los nombres, gracias a las claves foráneas.
SELECT i.invoice_number,
       i.invoice_date,
       CONCAT(c.manufacturer, ' ', c.model) AS car,
       cu.cust_name                          AS customer,
       s.name                                AS salesperson
FROM invoices AS i
JOIN cars         AS c  ON i.car_id         = c.id
JOIN customers    AS cu ON i.customer_id    = cu.id
JOIN salespersons AS s  ON i.salesperson_id = s.id;
