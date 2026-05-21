USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE `CUSTOMERS`
SET `email` = 'ppicasso@gmail.com'
WHERE `name` = 'Pablo Picasso';

UPDATE `CUSTOMERS`
SET `email` = 'lincoln@us.gov'
WHERE `name` = 'Abraham Lincoln';

UPDATE `CUSTOMERS`
SET `email` = 'hello@napoleon.me'
WHERE `name` = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;