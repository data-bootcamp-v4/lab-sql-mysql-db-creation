-- Lab | MySQL Database Creation
-- Bonus: borrado de un coche
-- El enunciado pide eliminar el coche con ID 4.
-- Ojo: el VIN duplicado (DAM41UDN3CHU2WVF6) está en los ids 5 y 6, no en el 4.

USE lab_mysql;

DELETE FROM cars WHERE id = 4;
