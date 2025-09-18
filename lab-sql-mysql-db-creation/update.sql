ALTER TABLE lab_mysql.customers
ADD COLUMN email VARCHAR(255);

SET SQL_SAFE_UPDATES = 0;

UPDATE lab_mysql.customers
SET email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE lab_mysql.customers
SET email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE lab_mysql.customers
SET email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;