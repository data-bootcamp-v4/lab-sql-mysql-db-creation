#Tengo que desactivar el modo de actualización segura
SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE cust_name = 'Pablo Picasso';
UPDATE customers SET email = 'lincoln@us.gov' WHERE cust_name = 'Abraham Lincoln';
UPDATE customers SET email = 'hello@napoleon.me' WHERE cust_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;