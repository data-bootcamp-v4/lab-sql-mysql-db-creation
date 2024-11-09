-- Deshabilitar el modo seguro
SET SQL_SAFE_UPDATES = 0;

-- Eliminar el coche duplicado
DELETE FROM cars WHERE id = 4 AND vin = 'DAM41UDN3CHU2WVF6';