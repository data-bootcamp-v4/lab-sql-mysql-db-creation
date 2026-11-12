USE lab_mysql;

-- Actualizar el correo de Pablo Picasso
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE id = 1;

-- Actualizar el correo de Abraham Lincoln
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE id = 2;

-- Actualizar el correo de Napoléon Bonaparte
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE id = 3;

-- Eliminar el coche con ID 4
DELETE FROM cars
WHERE id = 4;