USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers 
SET mail = 'ppicasso@gmail.com' 
WHERE nombre = 'Pablo Picasso';

UPDATE customers 
SET mail = 'lincoln@us.gov' 
WHERE nombre = 'Abraham Lincoln';

UPDATE customers 
SET mail = 'hola@napoleon.com' 
WHERE nombre = 'Napoleón Bonaparte';