-- update name and email
USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET c_email = 'ppicasso@gmail.com'
WHERE c_name = 'Pablo Picasso';

UPDATE customers SET c_email = 'lincoln@us.gov'
WHERE c_name = 'Abraham Lincoln';

UPDATE customers SET c_email = 'hello@napoleon.me'
WHERE c_name = 'Napoleon Bonaparte';


-- 