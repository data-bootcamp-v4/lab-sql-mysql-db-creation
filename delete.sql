-- delete.sql (variant A)
USE lab_mysql;
DELETE FROM cars WHERE id = 4;

-- Verify it’s gone
SELECT id, vin, manufacturer, model FROM cars ORDER BY id;

-- delete.sql (variant B)
USE lab_mysql;

-- Remove duplicate VIN rows, keeping the smallest id for each VIN
DELETE c1 FROM cars c1
JOIN cars c2
  ON c1.vin = c2.vin
 AND c1.id  > c2.id;

-- After cleaning, prevent future duplicates (add UNIQUE index)
ALTER TABLE cars ADD UNIQUE KEY uk_cars_vin (vin);

-- Verify
SELECT vin, COUNT(*) AS n FROM cars GROUP BY vin HAVING n > 1;
