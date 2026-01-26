SET SQL_SAFE_UPDATES = 0;

SELECT
name_customer
FROM customers
WHERE name_customer = 'Pablo Picasso';

DELETE FROM customers
WHERE name_customer = 'Pablo Picasso';
