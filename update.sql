SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE Customers
SET email='lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE Customers
SET email='hello@napoleon.me'
WHERE customer_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;