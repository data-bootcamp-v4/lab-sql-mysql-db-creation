-- Step 4: Bonus Challenge (Update & Delete)
  
  USE lab_mysql;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Update customer emails
UPDATE customers
SET cust_email = CASE
  WHEN cust_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
  WHEN cust_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
  WHEN cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END
WHERE cust_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;

-- Delete Duplicate Car (delete.sql)

USE lab_mysql;

-- Delete car with ID 4 (assuming duplicate VIN error)
DELETE FROM cars
WHERE id = 4;

