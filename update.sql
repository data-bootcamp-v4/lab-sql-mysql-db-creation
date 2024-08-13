SET SQL_SAFE_UPDATES = 0;
UPDATE `lab_db_creation`.`Customers`
SET `email` = 'ppicasso@gmail.com'
WHERE `customerID` = 10001;

UPDATE `lab_db_creation`.`Customers`
SET `email` = 'lincoln@us.gov'
WHERE `customerID` = 20001;

UPDATE `lab_db_creation`.`Customers`
SET `email` = 'hello@napoleon.me'
WHERE `customerID` = 30001;