-- Check which db is currently in use
SELECT DATABASE();

-- Disable safe update mode (optional)
SET SQL_SAFE_UPDATES = 0;

-- Update existing customer email addresses in the Customers table

-- Update emails based on placeholder value
-- Use LIKE for avoiding that extra spaces or accents in names prevent the match
UPDATE Customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_email = '-' AND cust_name LIKE '%Pablo Picasso%';

-- Update Abraham Lincoln
UPDATE Customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_email = '-' AND cust_name LIKE '%Abraham Lincoln%';

UPDATE Customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_email = '-' AND cust_name LIKE '%Napoléon Bonaparte%';

-- Check the update
SELECT * FROM Customers;

-- Re-enable safe updates
SET SQL_SAFE_UPDATES = 1;