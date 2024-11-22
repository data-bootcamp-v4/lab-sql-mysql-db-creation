USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_id  = 10001;
UPDATE customers SET cust_email = 'lincoln@us.gov' WHERE cust_id  = 20001;
UPDATE customers SET cust_email = 'hello@napoleon.me' WHERE cust_id  = 30001;