USE lab_mysql_db_creation;

SET SQL_SAFE_UPDATES = 0;

-- Update customer emails (bonus challenge)
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

-- -------------------------
-- -----------------------------------------------

-- Quick check table
-- ---------------------------------
SELECT
  cust_name,
  cust_email
FROM customers
WHERE cust_name IN (
  'Pablo Picasso',
  'Abraham Lincoln',
  'Napoléon Bonaparte'
);



