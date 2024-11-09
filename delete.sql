-- Deshabilitar el modo seguro de actualizaciones
SET SQL_SAFE_UPDATES = 0;

-- Eliminar la entrada duplicada del coche
DELETE FROM cars
WHERE car_id = 4;

-- Habilitar el modo seguro de actualizaciones
SET SQL_SAFE_UPDATES = 1;