SELECT id, cust_name, cust_email FROM customers;

UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE id = 1;

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE id = 2;

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE id = 3;