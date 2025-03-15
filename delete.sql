USE lab_mysql;

-- Delete the duplicated car entry with the VIN 'DAM41UDN3CHU2WVF6' that has car ID #4
DELETE FROM cars 
WHERE id = 4;