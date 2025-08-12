SET SQL_SAFE_UPDATES = 0;
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';