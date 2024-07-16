USE lab_mysql;

UPDATE customers
SET cust_email = CASE 
    WHEN id = 1 THEN 'ppicasso@gmail.com'
    WHEN id = 2 THEN 'lincoln@us.gov'
    WHEN id = 3 THEN 'hello@napoleon.me'
   
END
WHERE id IN (1, 2, 3); -- List of user IDs to update
