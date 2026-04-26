-- Disable safe updates to allow updating by name instead of ID
SET SQL_SAFE_UPDATES = 0;

-- Update for Pablo Picasso
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

-- Update for Abraham Lincoln
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

-- Update for Napoléon Bonaparte
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Re-enable safe updates (good practice)
SET SQL_SAFE_UPDATES = 1;