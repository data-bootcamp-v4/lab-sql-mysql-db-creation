-- Disable safe update mode if needed
SET SQL_SAFE_UPDATES = 0;

-- Update email addresses for specified customers
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

-- Re-enable safe update mode if desired
SET SQL_SAFE_UPDATES = 1;

/* or
-- Disable safe update mode if needed
SET SQL_SAFE_UPDATES = 0;

-- Update email addresses for multiple customers in one statement
UPDATE customers
SET cust_email = CASE 
    WHEN cust_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
    WHEN cust_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
    WHEN cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
    ELSE cust_email  -- Keep existing email if no match
END
WHERE cust_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

-- Re-enable safe update mode if desired
SET SQL_SAFE_UPDATES = 1;
*/
