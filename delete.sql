-- =====================================================================
-- delete.sql (bonus): eliminar el coche duplicado
-- =====================================================================
USE lab_mysql;

-- Paso 1. Ver el duplicado: el VIN DAM41UDN3CHU2WVF6 aparece dos veces.
SELECT *
FROM cars
WHERE vin = 'DAM41UDN3CHU2WVF6';

-- Paso 2. Borrar la entrada sobrante.
-- El enunciado dice "car ID #4", pero en la versión original del lab los ids empezaban en 0,
-- y el #4 era el Volvo V60. En esta tabla los ids empiezan en 1, así que el Volvo V60 es el id 5
-- (el id 4 es el Toyota RAV4, que no está duplicado y no hay que tocar).
-- Filtro por id Y por VIN a la vez: si me equivoco de id, no borro nada por error.
SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars
WHERE id = 5
  AND vin = 'DAM41UDN3CHU2WVF6';

SET SQL_SAFE_UPDATES = 1;

-- Paso 3. Ahora que no hay duplicados, añado la restricción UNIQUE al VIN,
-- para que no se pueda volver a repetir.
ALTER TABLE cars ADD CONSTRAINT uq_cars_vin UNIQUE (vin);

-- Comprobación
SELECT * FROM cars;
