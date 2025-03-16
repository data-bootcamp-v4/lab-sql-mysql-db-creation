-- update.sql
USE lab_mysql;

-- Desactivar el modo seguro de actualizaciones para permitir UPDATE sin una clave WHERE
SET SQL_SAFE_UPDATES = 0;

-- Actualizar el email de Pablo Picasso usando customer_id
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = '1001';  -- Usar customer_id en lugar del nombre

-- Actualizar el email de Abraham Lincoln usando customer_id
UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_id = '2001';  -- Usar customer_id en lugar del nombre

-- Actualizar el email de Napoléon Bonaparte usando customer_id
UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_id = '3001';  -- Usar customer_id en lugar del nombre

-- Reactivar el modo seguro de actualizaciones
SET SQL_SAFE_UPDATES = 1;
