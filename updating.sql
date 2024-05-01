USE dealership;

UPDATE dealership.customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = 1;

UPDATE dealership.customers
SET email = 'lincoln@us.gov'
WHERE customer_id = 2;

UPDATE dealership.customers
SET email = 'hello@napoleon.me'
WHERE customer_id = 3;

SELECT * FROM customers;