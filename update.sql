-- update.sql
USE lab_mysql;

-- If Workbench complains about safe updates:
SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Optional: turn safe updates back on
SET SQL_SAFE_UPDATES = 1;

-- Verify
SELECT id, cust_name, cust_email FROM customers ORDER BY id;
