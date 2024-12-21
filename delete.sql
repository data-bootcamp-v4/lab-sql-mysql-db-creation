-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Delete the duplicate car entry
DELETE FROM Car
WHERE id = 4;

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;
