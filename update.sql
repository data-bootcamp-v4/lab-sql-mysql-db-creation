USE lab_mysql;

-- Desactivar modo seguro para permitir actualizaciones
SET SQL_SAFE_UPDATES = 0;

-- Actualizar los correos electrónicos de los clientes
UPDATE customers SET email = 'ppicasso@gmail.com' WHERE name = 'Pablo Picasso';
UPDATE customers SET email = 'lincoln@us.gov' WHERE name = 'Abraham Lincoln';
UPDATE customers SET email = 'hola@napoleon.me' WHERE name = 'Napoleón Bonaparte';

-- Reactivar modo seguro
SET SQL_SAFE_UPDATES = 1;