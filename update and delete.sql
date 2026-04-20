USE cars_lab;
select * FROM customers;
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE id = 0;
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE id = 1;
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE id = 2;
SELECT * from invoices;
select * from cars;
DELETE FROM cars
WHERE car_id = 5;