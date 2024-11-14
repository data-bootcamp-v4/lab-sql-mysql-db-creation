-- Disable safe update mode if necessary
SET SQL_SAFE_UPDATES = 0;

-- Use the database
USE lab_mysql;

-- Delete duplicate car entry with car_id #4
DELETE FROM Cars
WHERE car_id = 4;

-- Enable safe update mode again (optional)
SET SQL_SAFE_UPDATES = 1;