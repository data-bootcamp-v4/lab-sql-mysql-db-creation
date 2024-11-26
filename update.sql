SET SQL_SAFE_UPDATES = 0;


UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customers.id = '001';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customers.id = '002';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customers.id = '003';


