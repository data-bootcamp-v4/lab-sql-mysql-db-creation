SHOW DATABASES;

USE lab_mysql;

SHOW TABLES;
DESC customers;
SELECT * FROM customers;
UPDATE customers SET email='lalal@example.com' WHERE email ='john.doe@example.com';
UPDATE customers SET email='lalal2@example.com' WHERE email='jane.smith@example.com';

SELECT email FROM customers;