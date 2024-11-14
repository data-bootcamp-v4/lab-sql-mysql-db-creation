-- Disable safe update mode if necessary
SET SQL_SAFE_UPDATES = 0;

-- Use the database
USE lab_mysql;

-- Update customer emails
UPDATE Customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE Customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE Customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Enable safe update mode again (optional)
SET SQL_SAFE_UPDATES = 1;