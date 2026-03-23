
SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars
WHERE id = 6;

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;