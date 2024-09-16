-- Usar la base de datos
USE lab_mysql;

-- Desactivar el modo de actualizaciones seguras (si es necesario)
SET SQL_SAFE_UPDATES = 0;

-- Actualizar los correos electrónicos de los clientes
UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

-- Activar de nuevo el modo de actualizaciones seguras (opcional)
SET SQL_SAFE_UPDATES = 1;

