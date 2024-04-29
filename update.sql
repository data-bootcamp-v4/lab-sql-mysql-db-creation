-- Bonus Challenge - Updating and Deleting Database Records
-- Connect the Database
USE lab_mysql;

-- Update customers table
UPDATE customers
	SET cust_email = "ppicasso@gmail.com"
    WHERE cust_id = 10001;
    
UPDATE customers
	SET cust_email = "lincoln@us.gov"
    WHERE cust_id = 20001;
    
UPDATE customers
	SET cust_email = "hello@napoleon.me"
    WHERE cust_id = 30001;
    
-- Select everything from customers table            
SELECT *
FROM customers;

