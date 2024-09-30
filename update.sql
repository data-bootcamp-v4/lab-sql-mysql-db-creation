-- Disable safe update mode if necessary
SET SQL_SAFE_UPDATES = 0;

-- Update email addresses for the specified customers
UPDATE customers
SET Email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso';

UPDATE customers
SET Email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE customers
SET Email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';

-- Enable safe update mode back
SET SQL_SAFE_UPDATES = 1;
