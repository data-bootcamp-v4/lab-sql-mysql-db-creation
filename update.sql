
USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;
 
UPDATE customers
SET cust_email = 'picasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

-- Compruebo hace el cambio
SELECT * FROM customers;




