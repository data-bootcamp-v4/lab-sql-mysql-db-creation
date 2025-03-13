-- update.sql

-- Enable safe updates (if needed, but it's generally good practice to use WHERE clauses)
-- SET SQL_SAFE_UPDATES = 0;

-- Update customer email addresses
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_id = 10001;

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_id = 20001;

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_id = 30001;

-- Disable safe updates (if you enabled them)
-- SET SQL_SAFE_UPDATES = 1;
