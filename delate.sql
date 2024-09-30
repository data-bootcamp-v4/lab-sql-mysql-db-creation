-- Disable safe update mode if necessary
SET SQL_SAFE_UPDATES = 0;

-- Delete the car entry with CarID #4 and VIN 'DAM41UDN3CHU2WVF6'
DELETE FROM cars
WHERE VIN = 'DAM41UDN3CHU2WVF6' AND EXISTS (
    SELECT 1 FROM cars WHERE VIN = 'DAM41UDN3CHU2WVF6' AND CarID = 4
);

-- Enable safe update mode back
SET SQL_SAFE_UPDATES = 1;
