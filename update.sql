USE lab_mysql;
SHOW tables;
SELECT * FROM customers;

-- Disable safe updates to allow updating by name
SET SQL_SAFE_UPDATES = 0;

-- Update Pablo Picasso
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

-- Update Abraham Lincoln
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

-- Update Napoléon Bonaparte
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Optional: Turn safe updates back on
SET SQL_SAFE_UPDATES = 1;
