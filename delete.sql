-- =====================================================
-- Bonus Challenge: Deleting Database Records
-- File: delete.sql
-- =====================================================

USE lab_mysql;

-- Disabling Safe mode for the duration of the deletion
SET SQL_SAFE_UPDATES = 0;

-- Deleting the duplicate car record (car_id = 4)
DELETE FROM car
WHERE car_id = 4;

-- Re-enabling Safe mode
SET SQL_SAFE_UPDATES = 1;

-- Verification:
SELECT * FROM car;