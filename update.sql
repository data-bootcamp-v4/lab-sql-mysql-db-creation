USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_code = '10001';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_code = '20001';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_code = '30001';

SET SQL_SAFE_UPDATES = 1;

SELECT
    customer_id,
    customer_code,
    customer_name,
    email
FROM customers;