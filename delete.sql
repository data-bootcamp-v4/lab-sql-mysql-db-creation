SET SQL_SAFE_UPDATES = 0;
DELETE FROM Cars  -- specifies the table from which we want to delete data
WHERE Cars.id=6 -- matches the records based on our condition
LIMIT 1;