USE LAB_MYSQL

SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE name = 'Pablo Picasso' LIMIT 1;
UPDATE customers SET email = 'lincoln@us.gov' WHERE name = 'Abraham Lincoln' LIMIT 1;
UPDATE customers SET email = 'hello@napoleon.me' WHERE name = 'Napoléon Bonaparte' LIMIT 1;
