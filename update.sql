# CHALLENGE 4 (BONUS)
#To begin, you have been provided with the email addresses of three customers in the form of a table.
# Your task is to create an update.sql file that will update the existing data in your database with 
# the new email addresses.

ALTER TABLE customers
ADD email VARCHAR(100);
-- The name of the customers have to be witten the same way as in the db so to make sure of that we can use
-- DESCRIBE

DESCRIBE customers;


UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE cust_name = 'Napoleon Bonaparte';




