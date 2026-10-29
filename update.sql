-- Bonus Challenge - Updating and Deleting Database Records
USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE NAME = 'Pablo Picasso';
UPDATE customers SET email = 'lincoln@us.gov' WHERE NAME = 'Abraham Lincoln';
UPDATE customers SET email = 'hello@napoleon.me' WHERE NAME = 'Napoléon Bonaparte';
