-- Actualizando las entradas de la tabla customers
SET SQL_SAFE_UPDATES = 0; -- Desabilita el modo seguro para poder editar las entradas de la tabla.
UPDATE customers SET email="ppicasso@gmail.com" WHERE name="Pablo Picasso";
UPDATE customers SET email="lincoln@us.gov" WHERE name="Abraham Lincoln";
UPDATE customers SET email="hello@napoleon.me" WHERE name="Napoléon Bonaparte	";