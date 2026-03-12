USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

DELETE FROM cars
WHERE id = 4;

SELECT name, email FROM customers;

SELECT * FROM cars;

INSERT INTO cars (id, vin, manufacturer, model, year, color)
VALUES (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');

SELECT * FROM cars;


DELETE FROM cars
WHERE id = 6;

SELECT * FROM cars;