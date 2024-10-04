USE CarSales;

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET Email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso';

UPDATE Customers
SET Email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE Customers
SET Email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Cars
WHERE Car_ID = 4;