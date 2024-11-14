-- Disable safe update mode if needed
SET SQL_SAFE_UPDATES = 0;

-- Delete the duplicated car entry with car ID #4
DELETE FROM cars
WHERE idcars = 5
AND vin = 'DAM41UDN3CHU2WVF6';

-- Re-enable safe update mode if desired
SET SQL_SAFE_UPDATES = 1;
