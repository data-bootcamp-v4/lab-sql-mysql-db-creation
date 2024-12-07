UPDATE lab_mysql.customers
SET cust_email = "ppicasso@gmail.com"
WHERE cust_name = "Pablo Picasso";

UPDATE lab_mysql.customers
SET cust_email = "lincoln@us.gov"
WHERE cust_name = "Abraham Lincoln";

UPDATE lab_mysql.customers
SET cust_email = "hello@napoleon.me"
WHERE cust_name = "Napoléon Bonaparte";

SET SQL_SAFE_UPDATES = 0;

SELECT *
FROM customers;