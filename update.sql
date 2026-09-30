-- =====================================================================
-- update.sql (bonus): nuevos emails de los clientes
-- =====================================================================
USE lab_mysql;

-- El modo seguro de Workbench bloquea UPDATE/DELETE si el WHERE no usa la clave primaria.
-- Lo desactivo para este script, como indica el enunciado.
SET SQL_SAFE_UPDATES = 0;

-- Un UPDATE por cliente. El WHERE es imprescindible: sin él, se cambiaría el email de TODOS.
-- Filtro por cust_id (único) en lugar de por nombre, porque dos clientes podrían llamarse igual.
UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_id = 10001;  -- Pablo Picasso
UPDATE customers SET cust_email = 'lincoln@us.gov'     WHERE cust_id = 20001;  -- Abraham Lincoln
UPDATE customers SET cust_email = 'hello@napoleon.me'  WHERE cust_id = 30001;  -- Napoléon Bonaparte

SET SQL_SAFE_UPDATES = 1;

-- Comprobación
SELECT cust_id, cust_name, cust_email FROM customers;
