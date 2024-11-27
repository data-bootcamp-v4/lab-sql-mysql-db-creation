SELECT * FROM customers;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso' AND id = 4;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE id = 5;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE id = 6;

DELETE FROM cars WHERE id = 6 AND vin = 'DAM41UDN3CHU2WVF6';
