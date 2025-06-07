SET SQL_SAFE_UPDATES = 0;
UPDATE customer
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customer
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customer
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

