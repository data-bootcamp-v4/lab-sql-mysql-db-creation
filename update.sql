-- Disables safe mode
SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

-- There are two completely different SETs in SQL: 
-- 1️. SET (system settings): SET SQL_SAFE_UPDATES = 0;
-- This changes a MySQL configuration setting. 
-- It does not change table data.

-- 2. SET (inside UPDATE statements): SET email = 'ppicasso@gmail.com'
-- Here SET assigns a new value to a column in a row.