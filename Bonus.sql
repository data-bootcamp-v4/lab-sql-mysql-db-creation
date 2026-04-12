
USE lab_sql_mysql_db_creation;

UPDATE Customers 
SET email =  "ppicasso@gmail.com"
WHERE customer_ID = "10001";
    
UPDATE Customers 
SET email =  "ppicasso@gmail.com"
WHERE customer_ID = "10001";

UPDATE Customers 
SET email =  "lincoln@us.gov"
WHERE customer_ID = "20001";

UPDATE Customers 
SET email =  "hello@napoleon.me"
WHERE customer_ID = "30001";

DELETE FROM Cars
WHERE vehicle_identification_number_VIN = 'DAM41UDN3CHU2WVF6'
AND model = 'V60 Cross Country';
