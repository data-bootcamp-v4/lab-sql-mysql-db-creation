
USE lab_mysql;

-- Desactivar el modo de actualización segura para permitir UPDATE sin WHERE en la PK
SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

-- Reactivar el modo de actualización segura
SET SQL_SAFE_UPDATES = 1;