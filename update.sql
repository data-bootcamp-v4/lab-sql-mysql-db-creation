-- updating the costumer's e-mail
SET SQL_SAFE_UPDATES = 0; --  desabling safe mode
UPDATE customers 
SET cust_email =
	CASE id
		WHEN 1 THEN 'ppicasso@gmail.com'
        WHEN 2 THEN 'lincoln@us.gov'
        WHEN 3 THEN 'hello@napoleon.me'
	END
WHERE id IN (1, 2, 3);

SELECT * FROM customers