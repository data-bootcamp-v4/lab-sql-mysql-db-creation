SELECT
email
FROM customers
WHERE name_customer = 'Pablo Picasso';

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
	SET email = 'ppicasso@gmail.com'
    WHERE email = 'pablopicasso@hotmail.com'

SELECT
name_customer,
email
FROM customers
WHERE name_customer = 'Alberto Durero';

UPDATE customers
	SET email = 'lincoln@us.gov'
    WHERE name_customer = 'Alberto Durero';
    
SELECT
name_customer,
email
FROM customers
WHERE name_customer = 'Rilke';

UPDATE customers
	SET email = 'hello@napoleon.me'
    WHERE name_customer = 'Rilke';
    

