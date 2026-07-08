USE lab_mysql;

-- The lab instructions state that the duplicated car entry has ID 4.
-- However, in the provided sample data, ID 4 belongs to the Toyota RAV4.
-- The duplicated VIN DAM41UDN3CHU2WVF6 appears in car IDs 5 and 6.
-- Therefore, ID 6 is deleted to remove the duplicate entry while retaining one record with the original VIN.

DELETE FROM cars 
WHERE id = 6;

SELECT * 
FROM cars;