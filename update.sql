-- Lab | MySQL Database Creation
-- Bonus: actualización de los emails de los clientes
-- Se filtra por cust_id (clave única), así que no hace falta desactivar el modo seguro.

USE lab_mysql;

UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_id = 10001; -- Pablo Picasso
UPDATE customers SET cust_email = 'lincoln@us.gov'     WHERE cust_id = 20001; -- Abraham Lincoln
UPDATE customers SET cust_email = 'hello@napoleon.me'  WHERE cust_id = 30001; -- Napoléon Bonaparte
