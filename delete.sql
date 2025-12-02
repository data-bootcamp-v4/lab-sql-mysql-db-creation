
USE lab_mysql;

-- Desactivar el modo de actualización segura y la verificación de claves foráneas
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS = 0; 

DELETE FROM cars
WHERE car_id = 4;


SET FOREIGN_KEY_CHECKS = 1;
SET SQL_SAFE_UPDATES = 1;