USE lab_mysql;

-- The lab asks to delete car ID #4.
-- In my current seeded data, there are no duplicated VINs.
DELETE FROM cars
WHERE id = 4;
SELECT * FROM cars;