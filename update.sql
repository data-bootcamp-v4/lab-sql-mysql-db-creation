SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE id = 0;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE id = 1;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE id = 2;

select * from customers;