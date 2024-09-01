-- Bonus challenge: you have discovered a duplicated car entry with the VIN DAM41UDN3CHU2WVF6,
-- and you want to remove the entry with car ID #5 from the database. 
-- You will need to create a delete.sql file to perform this deletion.

-- Disable safe mode if needed
SET SQL_SAFE_UPDATES = 0;

-- Delete the duplicated car entry with car_id = 4
DELETE FROM `cars`
WHERE `car_id` = 5;

select * from cars;