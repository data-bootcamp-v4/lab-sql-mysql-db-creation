USE lab_mysql;

-- Delete duplicated car
-- VIN DAM41UDN3CHU2WVF6 appears twice (ids 5 and 6).
-- The statement asks to delete car #4, but that one is the Toyota RAV4, not a duplicate.
-- We keep id 6 (V60 Cross Country) because it is the more specific record.
DELETE FROM cars
WHERE id = 5;

-- Prevent future duplicates: VIN must be unique
ALTER TABLE cars
ADD UNIQUE (vin);