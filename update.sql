-- Disable safe update mode 
SET SQL_SAFE_UPDATES = 0;

-- Update customer emails based on their names
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_name = 'Napoléon Bonaparte';

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;
