  -- 5) Bonus: update.sql and delete.sql
  -- Using lab
  -- Unable safe mode
  
  USE lab_mysql;
  SET SQL_SAFE_UPDATES = 0;

-- Updating values  
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';
  
UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';