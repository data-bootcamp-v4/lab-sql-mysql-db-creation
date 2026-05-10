USE lab_mysql;

-- las filas duplicadas son la 5 y la 6 PERO pide la 4 pues se borra la 4
DELETE FROM cars where id = 4;

SELECT * FROM cars;