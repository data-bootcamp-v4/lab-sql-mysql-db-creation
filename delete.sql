USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars WHERE car_id = 4;

SELECT car_id, VIN FROM cars 
