-- =========================================
-- update.sql
-- =========================================

-- OPCIONAL: Desactiva el modo de actualización segura,
-- así evitamos el error "You are using safe update mode".
SET SQL_SAFE_UPDATES = 0;

-- Actualizar email de Pablo Picasso
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

-- Actualizar email de Abraham Lincoln
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

-- Actualizar email de Napoléon Bonaparte
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Volvemos a activar safe update mode (opcional).
SET SQL_SAFE_UPDATES = 1;

-- =========================
-- Fin de update.sql
-- =========================
