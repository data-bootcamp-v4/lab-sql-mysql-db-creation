-- Disable safe mode if needed
SET SQL_SAFE_UPDATES = 0;

-- Delete the duplicated car entry with ID #4
DELETE FROM cars
WHERE id = 4;