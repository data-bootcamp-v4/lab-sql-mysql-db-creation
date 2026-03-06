USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET cust_email = 'johndoe@gmail.com'
WHERE id = 1; 

SELECT * FROM customers;