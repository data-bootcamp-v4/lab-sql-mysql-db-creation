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

DELETE FROM cars 
WHERE id = 5 AND VIN = 'DAM41UDN3CHU2WVF6';
select * from cars