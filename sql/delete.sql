-- ======================================================================================================
-- use lab_mysql database ----------------------
USE lab_mysql;
-- ======================================================================================================
-- desabiling safe update mode ----------------------
SET SQL_SAFE_UPDATES = 0;
-- ======================================================================================================
-- delete duplicate from CARS TABLE ----------------------
-- using DELETE FROM WHERE/AND
DELETE FROM CARS
WHERE VIN = 'DAM41UDN3CHU2WVF6' AND `car ID` = 5 ;
--
SELECT * FROM CARS;
SELECT * FROM CARS WHERE VIN = 'DAM41UDN3CHU2WVF6';
