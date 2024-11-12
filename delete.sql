-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Delete the duplicate car entry with car_id = 4
DELETE FROM cars
WHERE car_id = 4 AND vin = 'DAM41UDN3CHU2WVF6';

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;
