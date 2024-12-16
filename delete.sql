SELECT vin, COUNT(*)
FROM cars
GROUP BY vin
HAVING COUNT(*) > 1;

SELECT *
FROM cars
WHERE vin IN (
    SELECT vin
    FROM cars
    GROUP BY vin
    HAVING COUNT(*) > 1
)
ORDER BY vin;

DELETE FROM cars
WHERE id NOT IN (
    SELECT MIN(id)
    FROM cars
    GROUP BY vin
);
-- Error Code: 1093. You can't specify target table 'cars' for update in FROM clause
-- decided to create a temporary table to store ids of the rows i want to keep and delete the rest 
CREATE TEMPORARY TABLE temp_keep_ids AS
SELECT MIN(id) AS id
FROM cars
GROUP BY vin;

DELETE FROM cars
WHERE id NOT IN (SELECT id FROM temp_keep_ids);

DROP TEMPORARY TABLE IF EXISTS temp_keep_ids;

SELECT * FROM cars;

