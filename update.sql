USE lab_mysql;

SELECT * FROM customers;

SET SQL_SAFE_UPDATES = 1;

UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE id = '0';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

