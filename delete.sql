USE lab_mysql;

-- Eliminar el registro duplicado del coche con VIN 'DAM41UDN3CHU2WVF6'
DELETE FROM cars
WHERE vin = 'DAM41UDN3CHU2WVF6'
AND id = 5;
