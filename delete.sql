USE lab_mysql;


SET SQL_SAFE_UPDATES = 0;

-- delete duplicate (VIN DAM41UDN3CHU2WVF6) con id = 4
DELETE FROM cars
WHERE id = 4;


SELECT id, vin, manufacturer, model FROM cars;


SET SQL_SAFE_UPDATES = 1;
