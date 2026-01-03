USE lab_mysql;

-- Audit requirement: Remove duplicate car entry with ID #4
DELETE FROM cars WHERE car_id = 4;