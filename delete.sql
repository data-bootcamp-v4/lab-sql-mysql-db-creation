-- Usar la base de datos
USE lab_mysql;

-- Desactivar el modo de actualizaciones seguras (si es necesario)
SET SQL_SAFE_UPDATES = 0;

-- Eliminar el coche con el ID 4 (duplicado)
DELETE FROM Cars
WHERE car_id = 4;

-- Activar de nuevo el modo de actualizaciones seguras (opcional)
SET SQL_SAFE_UPDATES = 1;
