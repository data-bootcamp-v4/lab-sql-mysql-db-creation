USE lab_mysql;

-- Update customer emails
-- Customers are identified by cust_id (unique) instead of by name
UPDATE customers
SET cust_email = 'lucia.martin@gmail.com'
WHERE cust_id = 10001;

UPDATE customers
SET cust_email = 'carmen.ruiz@hotmail.com'
WHERE cust_id = 20001;

UPDATE customers
SET cust_email = 'elena.navarro@outlook.com'
WHERE cust_id = 30001;