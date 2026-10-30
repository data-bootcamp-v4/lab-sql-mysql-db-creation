-- update.sql
-- Update customer email addresses
USE lab_mysql;

-- Disable safe-update mode to allow updates without a key in the WHERE clause
SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_name = 'Pablo Picasso';
UPDATE customers SET cust_email = 'lincoln@us.gov'    WHERE cust_name = 'Abraham Lincoln';
UPDATE customers SET cust_email = 'hello@napoleon.me' WHERE cust_name = 'Napoléon Bonaparte';

-- Re-enable safe-update mode
SET SQL_SAFE_UPDATES = 1;