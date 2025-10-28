CREATE DATABASE IF NOT EXISTS deletes;

USE deletes;

USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars
WHERE car_id = '6';

SELECT * FROM cars;