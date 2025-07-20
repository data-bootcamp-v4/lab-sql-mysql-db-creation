USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

-- Delete duplicated car (id 4, duplicate VIN)
DELETE FROM cars
WHERE id = 4;
