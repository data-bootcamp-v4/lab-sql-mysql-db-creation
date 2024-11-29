SET SQL_SAFE_UPDATES = 0;

select * from customers;

UPDATE customers
SET cust_email = 'ppicasso@gmail.com' WHERE id_customers = 10001;

UPDATE customers
SET cust_email = 'lincoln@us.gov' WHERE id_customers = 20001;

UPDATE customers
SET cust_email = 'hello@napoleon.me' WHERE id_customers = 30001;