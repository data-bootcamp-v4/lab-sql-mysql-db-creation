INSERT INTO cars (vin, manufacturer, model, car_year, color)
VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars
WHERE id = 6;

SET SQL_SAFE_UPDATES = 1