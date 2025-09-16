-- Setting the working database
USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars WHERE id = 4 AND vin = 'DAM41UDN3CHU2WVF6';

select * from lab_mysql.cars;