SELECT vin, COUNT(*) AS duplicate_count
FROM cars
GROUP BY vin
HAVING COUNT(*) > 1;

SELECT *
FROM cars
WHERE vin = 'DAM41UDN3CHU2WVF6';

DELETE FROM cars
WHERE car = 6;

