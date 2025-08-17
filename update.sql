USE car_sales_lab3;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE Customer_Name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE Customer_Name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE Customer_Name = 'Napoléon Bonaparte';
