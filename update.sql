
SET SQL_SAFE_UPDATES = 0; #to take out the update security mode just for a moment

UPDATE lab_mysql.customers
SET email='ppicasso@gmail.com'
WHERE `name`= 'Pablo Picasso';

UPDATE lab_mysql.customers
SET email='lincoln@us.gov'
WHERE `name`= 'Abraham Lincoln';

UPDATE lab_mysql.customers
SET email='hello@napoleon.me'
WHERE `name`= 'Napoléon Bonaparten';

SET SQL_SAFE_UPDATES = 1; #to yo activate the security mode back