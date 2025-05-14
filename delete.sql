USE lab_mysql;

-- Desactivamos el modo seguro
SET SQL_SAFE_UPDATES = 0;

-- Eliminar el coche duplicado con car_id = 4
DELETE FROM cars
WHERE car_id = 4;

-- Volver a activar el modo seguro
SET SQL_SAFE_UPDATES = 1;