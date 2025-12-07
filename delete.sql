
-- to make sure that car_ID = 4 is not referenced by any invoice.
SELECT * FROM invoices WHERE car_ID = 4;
-- Disable safe mode
SET SQL_SAFE_UPDATES = 0;
DELETE FROM cars
WHERE car_ID = 4;
-- Deletes only the duplicated row
SET SQL_SAFE_UPDATES = 1;
-- Enable safe mode