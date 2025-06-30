USE lab_mysql;
INSERT INTO cars (VIN, Manufacturer, Model, Year, Colour)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (customer_id, name, phone, city)
VALUES 
(0, '10001', 'Pablo', '+34 636 17 63 82', NULL, 'Madrid'),
(1, '20001', 'Abraham', '+1 305 907 7086', NULL, 'Miami'),
(2, '30001', 'Napoléon', '+33 1 79 75 40 00', NULL, 'Paris');

INSERT INTO salespersons (staff_id, name, store_location)
VALUES 
(1, '00001', 'Petey', 'Madrid'),
(2, '00002', 'Anna', 'Barcelona'),
(3, '00003', 'Paul', 'Berlin'),
(4, '00004', 'Gail', 'Paris'),
(5, '00005', 'Paige' 'Miami'),
(6, '00006', 'Bob', 'Mexico City'),
(7, '00007', 'Walter', 'Amsterdam'),
(8, '00008', 'Shonda', 'São Paulo');


INSERT INTO invoices (invoice_id, invoice_number, date, car_id, customer_id, salesperson_id)
VALUES 
(1, '852399038', '2018-08-22', 1, 1, 3),
(2, '731166526', '2018-12-31', 3, 3, 5),
(3, '271135104', '2019-01-22', 2, 2, 7);
