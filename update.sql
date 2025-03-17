SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 
    CASE 
        WHEN name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
        WHEN name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
        WHEN name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
    END
WHERE name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

select * from customers