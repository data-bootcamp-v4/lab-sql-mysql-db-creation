USE lab_mysql;

-- Desactivar el modo de actualización segura para permitir updates 
SET SQL_SAFE_UPDATES = 0;

-- Actualización de correo
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

-- Actualización de correo 
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

--  Actualización de correo
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Reactivar el modo de actualización segura 
SET SQL_SAFE_UPDATES = 1; 