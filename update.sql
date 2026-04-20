USE lab_mysql;

SELECT * FROM customers;

UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_id = 1;
UPDATE customers SET cust_email = 'lincoln@us.gov' WHERE cust_id = 2;
UPDATE customers SET cust_email = 'hello@napoleon.me' WHERE cust_id = 3;

SELECT * FROM customers;