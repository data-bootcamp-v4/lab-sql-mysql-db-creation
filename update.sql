-- Bonus Challenge
-- Updating Customer Email Addresses

-- Disable safe update mode to allow updates without a WHERE clause on primary key (good practice!)
SET SQL_SAFE_UPDATES = 0;

-- Update email addresses of specific customers
UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo';

SELECT * FROM Customers WHERE name = 'Pablo';



UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham';

SELECT * FROM Customers WHERE name = 'Abraham';



UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoleon';

SELECT * FROM Customers WHERE name = 'Napoleon';


-- Re-enable safe update mode if you want to return it to its previous state
SET SQL_SAFE_UPDATES = 1;