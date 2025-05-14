-- Desactivar el modo de actualización segura
SET SQL_SAFE_UPDATES = 0;

UPDATE clientes
SET email = 'ppicasso@gmail.com'
WHERE nombre = 'Ana Martínez';

UPDATE clientes
SET email = 'lincoln@us.gov'
WHERE nombre = 'Luis Pérez';

UPDATE clientes
SET email = 'hola@napoleon.me'
WHERE nombre = 'Marta Gómez';