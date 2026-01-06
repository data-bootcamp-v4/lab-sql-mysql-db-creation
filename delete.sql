USE lab_mysql_db_creation;

SET SQL_SAFE_UPDATES = 0;

-- Delete the duplicated car entry (bonus challenge)
DELETE FROM cars
WHERE id = 4;

SET SQL_SAFE_UPDATES = 1;

-- ------------------------------------
-- -----------------------------------

-- Quick Check
-- -----------------------------------------------------
-- Check that the car with id = 4 no longer exists
SELECT *
FROM cars
WHERE id = 4;

-- Optional additional check:
-- Verify how many cars remain with the duplicated VIN
SELECT
  vin,
  COUNT(*) AS total_records
FROM cars
WHERE vin = 'DAM41UDN3CHU2WVF6'
GROUP BY vin;

