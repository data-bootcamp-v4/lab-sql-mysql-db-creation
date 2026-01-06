-- Final verification queries
-- Validate database state after update and delete operations
-- ------------------------------------------------------------
USE lab_mysql_db_creation;

-- CARS -------------
-- -------------------------------------------
-- Verify that the duplicated car entry was removed
-- Expected output:
-- One single row returned for this VIN
-- (confirming that only one car remains with this VIN)

SELECT * FROM cars WHERE vin = 'DAM41UDN3CHU2WVF6';
-- ---------------------------------------------------

-- CUSTOMERS / EMAILS ---------------------------------
-- ---------------------------------------------------------------
-- Verify that customer email addresses were updated correctly
-- Expected output:
-- Pablo Picasso        -> ppicasso@gmail.com
-- Abraham Lincoln      -> lincoln@us.gov
-- Napoléon Bonaparte   -> hello@napoleon.me

SELECT cust_name, cust_email
FROM customers;
