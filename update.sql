USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;


UPDATE Customers
SET cust_email	= 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE Customers
SET cust_email	= 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE Customers
SET cust_email	= 'hola@napoleon.me'
WHERE cust_name = 'Napoleón Bonaparte';


SELECT *
FROM Customers;
