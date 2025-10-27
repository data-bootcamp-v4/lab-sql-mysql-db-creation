USE autocar;
SET SQL_SAFE_UPDATES = 0;
UPDATE customers
SET Email = 'ppicasso@gmail.com'
WHERE Customer_name = 'Pablo Picasso';

UPDATE customers
SET Email = 'lincoln@us.gov'
WHERE Customer_name = 'Abraham Lincoln';

UPDATE customers
SET Email = 'hello@napoleon.me'
WHERE Customer_name = 'Napoléon Bonaparte';

SELECT Customer_name, Email FROM customers;