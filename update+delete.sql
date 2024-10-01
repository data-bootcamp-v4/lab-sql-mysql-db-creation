USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET Email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso';

UPDATE customers
SET Email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE customers
SET Email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

-- Delete duplicate car entry
DELETE FROM cars
WHERE VIN = 'DAM41UDN3CHU2WVF6'
AND Model = 'V60 Cross Country'; 

-- Verification
SELECT * FROM customers
WHERE Name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

SELECT * FROM cars
WHERE VIN = 'DAM41UDN3CHU2WVF6';
