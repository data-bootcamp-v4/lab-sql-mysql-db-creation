USE lab_mysql;

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
SET SQL_SAFE_UPDATES = 1;
SELECT customer_id, name, email FROM customers;
SELECT name FROM customers;
SHOW COLUMNS FROM customers;
SELECT * FROM customers WHERE email = 'ppicasso@gmail.com';
SELECT email, HEX(email) FROM customers;
SELECT email, HEX(email) FROM customers;
SHOW CREATE TABLE customers;
UPDATE customers SET email = 'ppicasso@gmail.com' WHERE customer_id = 1;
UPDATE customers SET email = 'lincoln@us.gov' WHERE customer_id = 2;
UPDATE customers SET email = 'hello@napoleon.me' WHERE customer_id = 3;