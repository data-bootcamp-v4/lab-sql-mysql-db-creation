#CHALLENGE 4(BONUS)
#Additionally, you have discovered a duplicated car entry with the VIN DAM41UDN3CHU2WVF6, 
# and you want to remove the entry with car ID #4 from the database. 
#You will need to create a delete.sql file to perform this deletion.

-- Because I didn't add the vin column to sve time i am going to use the ID to search for the repeat car number

DELETE FROM cars
WHERE id = 4;
