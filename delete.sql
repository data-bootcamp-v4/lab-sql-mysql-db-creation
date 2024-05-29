USE lab_mysql;

-- Disable safe updates
SET SQL_SAFE_UPDATES = 0;

-- Delete the duplicate car entry
DELETE FROM cars
WHERE CarID = 4;

-- Enable safe updates
SET SQL_SAFE_UPDATES = 1;