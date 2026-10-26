SET SQL_SAFE_UPDATES = 0;

USE lab_mysql;

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

UPDATE customers
SET cust_email = REPLACE(cust_email, 'thepicasso@gmail.com', 'ppicasso@gmail.com');

UPDATE customers
SET cust_email = REPLACE(cust_email, 'abraham.lincoln@gmail.com', 'lincoln@us.gov');

UPDATE customers
SET cust_email = REPLACE(cust_email, 'napolean.bonaparte@gmail.com', 'hello@napoleon.me');

SET SQL_SAFE_UPDATES = 1;

SELECT vin, COUNT(*) AS duplicate_count
FROM cars
GROUP BY vin
HAVING COUNT(*) > 1;

SELECT *
FROM cars
WHERE vin = 'DAM41UDN3CHU2WVF6';

DELETE FROM cars
WHERE car = 6;

SELECT *
FROM cars;