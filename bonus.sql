-- update.sql
USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET customer_email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE customers
SET customer_email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE customers
SET customer_email = 'hello@napoleon.me'
WHERE customer_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

-- delete.sql
USE lab_mysql;

DELETE FROM cars
WHERE car_id = 4
  AND vin = 'DAM41UDN3CHU2WVF6';
