USE lab_mysql;

-- Deshabilitar modo seguro para realizar eliminaciones
SET SQL_SAFE_UPDATES = 0;

-- Eliminar la entrada duplicada del coche con VIN DAM41UDN3CHU2WVF6
DELETE FROM cars 
WHERE id = 4;

-- Restaurar el modo seguro (opcional)
SET SQL_SAFE_UPDATES = 1;
