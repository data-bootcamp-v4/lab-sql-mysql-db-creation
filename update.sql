USE lab1_rk_mysql;
SELECT * FROM customers;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE id_customer = 1;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE id_customer = 2;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE id_customer = 3;

SELECT * FROM customers;
