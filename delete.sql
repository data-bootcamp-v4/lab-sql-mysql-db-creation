USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars
WHERE car_id = 4 AND `VIN number` = 'DAM41UDN3CHU2WVF6';

SELECT car_id, `VIN number` FROM cars;


DELETE FROM cars
WHERE car_id = 6 AND `VIN number`= 'DAM41UDN3CHU2WVF6';

SELECT car_id, `VIN number` FROM cars;