SELECT *
FROM clientes;

SET SQL_SAFE_UPDATES = 0;

UPDATE clientes 
SET correo = 'ppicasso@gmail.com'
WHERE nombre = 'Pablo Picasso';

UPDATE clientes 
SET correo = 'lincoln@us.gov'
WHERE nombre = 'Abraham Lincoln';

UPDATE clientes 
SET correo = 'hola@napoleon.me'
WHERE nombre = 'Napoleón Bonaparte';