USE lab_my_sql;

SELECT * FROM customers;

UPDATE lab_my_sql.customers
SET email = 'ppicasso@gmail.com'
WHERE id = 104;

UPDATE lab_my_sql.customers
SET email = 'lincoln@us.gov'
WHERE id = 105;

UPDATE lab_my_sql.customers
SET email = 'hello@napoleon.me'
WHERE id = 106;
