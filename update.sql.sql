-- Active: 1721290976264@@127.0.0.1@3306@dealership
SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE cust_id = 10001;
UPDATE customers SET email = 'lincoln@us.gov' WHERE cust_id = 20001;
UPDATE customers SET email = 'hello@napoleon.me' WHERE cust_id = 30001;