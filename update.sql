USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET Email = "ppicasso@gmail.coM" 
WHERE Name = "Pablo Picasso";

UPDATE Customers
SET Email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE Customers
SET Email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';


SELECT Name, Email FROM Customers
WHERE Name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');