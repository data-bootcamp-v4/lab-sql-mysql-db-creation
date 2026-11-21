-- =====================================================
-- delete.sql  -  BONUS: borrar el coche duplicado
-- =====================================================
USE lab_mysql;

-- El VIN DAM41UDN3CHU2WVF6 aparece dos veces (ids 5 y 6).
-- El enunciado pide borrar el "coche #4" contando desde 0, que en nuestra tabla
-- (que empieza en 1) es el id 5: el primer Volvo duplicado.
DELETE FROM cars WHERE id = 5;

SELECT * FROM cars;
