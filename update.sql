-- Enable unsafe updates if needed
SET SQL_SAFE_UPDATES = 0;

-- Update customer emails
UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_name = 'Pablo Picasso';
UPDATE customers SET cust_email = 'lincoln@us.gov' WHERE cust_name = 'Abraham Lincoln';
UPDATE customers SET cust_email = 'hello@napoleon.me' WHERE cust_name = 'Napoléon Bonaparte';
