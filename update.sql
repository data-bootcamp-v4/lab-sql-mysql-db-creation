USE lab_mysql;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Update customer email addresses
UPDATE customers 
SET cust_email = CASE
    WHEN cust_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
    WHEN cust_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
    WHEN cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END
WHERE cust_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

-- Enable safe update mode (optional, for safety)
SET SQL_SAFE_UPDATES = 1;

select * from customers;