-- bonus challenge
-- Your task is to create an update.sql file that will update the 
-- existing data in your database with the new email addresses
-- Disable safe mode if needed
SET SQL_SAFE_UPDATES = 0;

-- Update email for Pablo Picasso
UPDATE `customers`
SET `email` = 'ppicasso@gmail.com'
WHERE `name` = 'Pablo Picasso';

-- Update email for Abraham Lincoln
UPDATE `customers`
SET `email` = 'lincoln@us.gov'
WHERE `name` = 'Abraham Lincoln';

-- Update email for Napoléon Bonaparte
UPDATE `customers`
SET `email` = 'hello@napoleon.me'
WHERE `name` = 'Napoléon Bonaparte';

select * from customers;
