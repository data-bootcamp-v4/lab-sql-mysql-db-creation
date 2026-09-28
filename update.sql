SET SQL_SAFE_UPDATES = 0;

UPDATE clientes
SET email = 'ppicasso@gmail.com'
WHERE nombre = 'Pablo Picasso';

UPDATE clientes
SET email = 'lincoln@us.gov'
WHERE nombre = 'Abraham Lincoln';

UPDATE clientes
SET email = 'hello@napoleon.me'
WHERE nombre = 'Napoleón Bonaparte';

SElECT* FROM clientes;
