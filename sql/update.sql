-- ======================================================================================================
-- use lab_mysql database ----------------------
USE lab_mysql;
-- ======================================================================================================
-- desabiling safe update mode ----------------------
SET SQL_SAFE_UPDATES = 0;
-- ======================================================================================================
-- METHOD 1 to UPDATE ----------------------
UPDATE CUSTOMERS
SET email = 'ppicasso@gmail.com'
WHERE `name` = 'Pablo Picasso';
--
UPDATE CUSTOMERS
SET email = 'lincoln@us.gov'
WHERE `name` = 'Abraham Lincoln';
--
UPDATE CUSTOMERS
SET email = 'hello@napoleon.me'
WHERE `name` = 'Napoléon Bonaparte';
SELECT * FROM CUSTOMERS;
-- ======================================================================================================
-- METHOD 2 to UPDATE ----------------------
-- using SET/CASE WHEN/THEN END WHERE/IN
UPDATE CUSTOMERS
SET email = CASE
    WHEN `name` = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
    WHEN `name` = 'Abraham Lincoln' THEN 'lincoln@us.gov'
    WHEN `name` = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END
WHERE `name` IN (
    'Pablo Picasso',
    'Abraham Lincoln',
    'Napoléon Bonaparte'
);
SELECT * FROM CUSTOMERS;
