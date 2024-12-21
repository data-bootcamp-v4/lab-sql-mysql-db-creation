SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET email = CASE customer_name
    WHEN 'Pablo Picasso' THEN 'ppicasso@gmail.com'
    WHEN 'Abraham Lincoln' THEN 'lincoln@us.gov'
    WHEN 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
    END
WHERE customer_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

SET SQL_SAFE_UPDATES = 1;
