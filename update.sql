SET SQL_SAFE_UPDATES = 0;

UPDATE lab_mysql.customers SET email = 'ppicasso@gmail.com' WHERE cust_id = '10001';
UPDATE lab_mysql.customers SET email = 'lincoln@us.gov'     WHERE cust_id = '20001';
UPDATE lab_mysql.customers SET email = 'hello@napoleon.me'  WHERE cust_id = '30001';

SET SQL_SAFE_UPDATES = 1;

SELECT customer_id, name, email FROM lab_mysql.customers;