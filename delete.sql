USE lab_mysql;

-- Desactivar el modo seguro de actualizaciones para permitir DELETE sin una clave WHERE
SET SQL_SAFE_UPDATES = 0;

-- Eliminar la fila usando únicamente el identificador car_id
DELETE FROM cars
WHERE car_id = 4;

-- Reactivar el modo seguro de actualizaciones
SET SQL_SAFE_UPDATES = 1;
