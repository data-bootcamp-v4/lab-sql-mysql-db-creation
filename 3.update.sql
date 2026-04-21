## Bonus Challenge - update
USE lab_mysql;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE id = 1;
UPDATE customers SET email = 'lincoln@us.gov' WHERE id = 2;
UPDATE customers SET email = 'hello@napoleon.me' WHERE id = 3;

SHOW TABLES;
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salesperson;
SELECT * FROM invoices;