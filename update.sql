SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET Email = CASE Name
	WHEN 'Pablo Picasso' THEN 'ppicasso@gmail.com'
    WHEN 'Abraham Lincoln' THEN 'lincoln@us.gov'
    WHEN 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END
WHERE Name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte'); 