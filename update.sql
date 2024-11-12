SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE Customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE Customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

SELECT * FROM Customers WHERE cust_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');