SET SQL_SAFE_UPDATES = 0; #to take out the update security mode just for a moment

DELETE FROM lab_mysql.cars
WHERE VIN = 789;

SET SQL_SAFE_UPDATES = 1; #to yo activate the security mode back

SELECT * FROM lab_mysql.cars;