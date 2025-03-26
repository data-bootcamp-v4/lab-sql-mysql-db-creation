USE lab_mysql;

SELECT * FROM invoices WHERE car_id IN (4, 5);

DELETE FROM invoices WHERE car_id IN (4, 5);

DELETE FROM cars WHERE id = 5;
DELETE FROM cars WHERE id = 4;