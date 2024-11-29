USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;  -- Desactiva el modo de actualización segura si es necesario.

UPDATE customers
SET cust_email = CASE cust_name
    WHEN 'Pablo Picasso' THEN 'ppicasso@gmail.com'
    WHEN 'Abraham Lincoln' THEN 'lincoln@us.gov'
    WHEN 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END
WHERE cust_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');
