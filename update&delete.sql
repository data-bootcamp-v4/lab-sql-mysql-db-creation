-- update.sql
USE lab_mysql;

-- Safe-update mode can block these; disable it if you get a warning.
SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';
-- delete.sql
USE lab_mysql;

-- The README asks to remove the entry with car ID #4.
DELETE FROM cars
WHERE id = 4;
