USE lab_mysql;

-- Desactivamos el modo seguro para permitir actualizaciones sin clave primaria
SET SQL_SAFE_UPDATES = 0;

-- Actualizar el email de Pablo Picasso
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

-- Actualizar el email de Abraham Lincoln
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

-- Actualizar el email de Napoléon Bonaparte
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Volver a activar el modo seguro
SET SQL_SAFE_UPDATES = 1;