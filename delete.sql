USE lab_mysql;

-- Delete the duplicated car (same VIN as car #5): the Volvo V60 Cross Country
DELETE FROM cars WHERE id = 6;
