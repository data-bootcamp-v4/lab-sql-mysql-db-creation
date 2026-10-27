-- =====================================================
-- Bonus Challenge: Updating Database Records
-- File: update.sql
-- =====================================================

USE lab_mysql;

-- Disabling Safe mode for the duration of the update (as suggested by the task)
SET SQL_SAFE_UPDATES = 0;

-- 1. Updating Pablo Picasso's email address
UPDATE customer
SET email = 'ppicasso@gmail.com'
WHERE first_name = 'Pablo' AND last_name = 'Picasso';

-- 2. Updating Abraham Lincoln's email address
UPDATE customer
SET email = 'lincoln@us.gov'
WHERE first_name = 'Abraham' AND last_name = 'Lincoln';

-- 3. Updating Napoléon Bonaparte’s email address
UPDATE customer
SET email = 'hello@napoleon.me'
WHERE first_name = 'Napoléon' AND last_name = 'Bonaparte';

-- Re-enabling Safe mode
SET SQL_SAFE_UPDATES = 1;

-- Verification:
SELECT customer_id, first_name, last_name, email FROM customer;