-- Update email for Pablo Picasso
USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;
UPDATE Customers
SET Email = 'ppicasso@gmail.com'
WHERE CustomerName = 'Pablo Picasso';

-- Update email for Abraham Lincoln
UPDATE Customers
SET Email = 'lincoln@us.gov'
WHERE CustomerName = 'Abraham Lincoln';

-- Update email for Napoléon Bonaparte
UPDATE Customers
SET Email = 'hello@napoleon.me'
WHERE CustomerName = 'Napoléon Bonaparte';
SET SQL_SAFE_UPDATES = 1;


