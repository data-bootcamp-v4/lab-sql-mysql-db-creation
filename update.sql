-- Deshabilitar el modo seguro de actualizaciones
SET SQL_SAFE_UPDATES = 0;

-- Actualizar las direcciones de correo electrónico de los clientes
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Habilitar el modo seguro de actualizaciones
SET SQL_SAFE_UPDATES = 1;