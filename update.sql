-- Disable safe update mode if necessary
SET SQL_SAFE_UPDATES = 0;

-- Update Pablo Picasso's email
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

-- Update Abraham Lincoln's email
UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

-- Update Napoléon Bonaparte's email
UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

-- Re-enable safe update mode if you disabled it
SET SQL_SAFE_UPDATES = 1;
