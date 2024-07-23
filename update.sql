-- Active: 1721290976752@@127.0.0.1@3306@dealership
SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com' WHERE customer_ID = 10001;

UPDATE customers
SET email = 'lincoln@us.gov' WHERE customer_ID = 20001;

UPDATE customers
SET email = 'hello@napoleon.me' WHERE customer_ID = 30001;

SET SQL_SAFE_UPDATES = 1

