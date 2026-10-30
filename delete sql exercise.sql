-- delete.sql
-- Remove the duplicated Volvo entry (VIN DAM41UDN3CHU2WVF6)
USE lab_mysql;

-- Disable safe-update mode to allow the deletion
SET SQL_SAFE_UPDATES = 0;

-- Keep only the first occurrence of the VIN and delete the duplicate
DELETE FROM cars
WHERE vin = 'DAM41UDN3CHU2WVF6'
  AND id > (SELECT MIN(id) FROM (SELECT id FROM cars WHERE vin = 'DAM41UDN3CHU2WVF6') AS t);

-- Literal version if the lab expects the row with id = 4 to be removed:
-- DELETE FROM cars WHERE id = 4;

-- Re-enable safe-update mode
SET SQL_SAFE_UPDATES = 1;