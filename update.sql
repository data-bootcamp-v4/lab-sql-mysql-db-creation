-- Disable safe updates if needed (to avoid "safe update mode" error)
SET SQL_SAFE_UPDATES = 0;

-- Update the email address for Pablo Picasso
UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

-- Update the email address for Abraham Lincoln
UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

-- Update the email address for Napoléon Bonaparte
UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

-- Re-enable safe updates if needed
SET SQL_SAFE_UPDATES = 1;
