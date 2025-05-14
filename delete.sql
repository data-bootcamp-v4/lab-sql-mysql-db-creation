-- Eliminar el vehículo duplicado con VIN '1HGCM82633A004352'
SET SQL_SAFE_UPDATES = 0;
DELETE FROM automoviles
WHERE vin = '1HGCM82633A004352';