-- BONUS 

SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET email = 'ppicasso@gmail.com'  WHERE customer_id = 10001;
UPDATE customers SET email = 'lincoln@us.gov'      WHERE customer_id = 20001;
UPDATE customers SET email = 'hello@napoleon.me'   WHERE customer_id = 30001;

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM customers;

-- HINT 

SELECT * FROM cars;
-- duplicate entries VIN : DAM41UDN3CHU2WVF6

-- DELETE FROM cars WHERE VIN = 'DAM41UDN3CHU2WVF6'
-- BUT it will delete all the info with same id so I have to create a new column with unique id then i can select 
-- which duplicated id i want to delte it 

ALTER TABLE cars ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;
SELECT * FROM cars;
DELETE FROM cars WHERE id = 6;

SELECT * FROM cars;

