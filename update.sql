USE lab_mysql;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso' AND customer_id = 1;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln' AND customer_id = 2;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte' AND customer_id = 3;

