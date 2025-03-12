USE lab1_rk_mysql;
SELECT * FROM cars;

SELECT vin, COUNT(*)
FROM cars
GROUP BY vin
HAVING COUNT(*) > 1;

DELETE FROM cars
WHERE id_car = 6 and vin = "DAM41UDN3CHU2WVF6";

DELETE FROM cars
WHERE id_car = 4;

SELECT * FROM cars;