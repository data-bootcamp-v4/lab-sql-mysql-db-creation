USE lab_mysql;

UPDATE invoices SET car_id = 5 
WHERE car_id = 4;

DELETE FROM Cars 
WHERE id_vehicle = 4;