USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers 
SET email = 'ppicasso@gmail.com' 
WHERE name = 'Pablo Picasso';

UPDATE Customers 
SET email = 'lincoln@us.gov' 
WHERE name = 'Abraham Lincoln';

UPDATE Customers 
SET email = 'hello@napoleon.me' 
WHERE name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Customers;

UPDATE Customers SET email = 'ppicasso@gmail.com' WHERE name = 'Pablo Picasso';
UPDATE Customers SET email = 'lincoln@us.gov' WHERE name = 'Abraham Lincoln';
UPDATE Customers SET email = 'hello@napoleon.me' WHERE name = 'Napoleon Bonaparte';


