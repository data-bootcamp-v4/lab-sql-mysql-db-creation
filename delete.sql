use lab_mysql;
SELECT *
FROM cars;
ALTER TABLE cars
ADD COLUMN car_id int;
INSERT INTO cars(VIN, car_id) VALUES (1001, 1);
INSERT INTO cars (VIN, car_id) VALUES (1002, 2);
INSERT INTO cars (VIN, car_id) VALUES (1003, 3);
INSERT INTO cars (VIN, car_id) VALUES (1004, 4);
INSERT INTO cars (VIN, car_id) VALUES (1005, 5);
INSERT INTO cars (VIN, car_id) VALUES (1006, 6);
INSERT INTO cars (VIN, car_id) VALUES (1007, 7);
INSERT INTO cars (VIN, car_id) VALUES (1008, 8);
INSERT INTO cars (VIN, car_id) VALUES (1009, 9);
SET SQL_SAFE_UPDATES = 0;
delete from cars where car_id = 4;
 