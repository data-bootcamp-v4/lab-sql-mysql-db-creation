USE lab_mysql;

-- Вставка данных в таблицу cars
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

-- Вставка данных в таблицу salespersons
INSERT INTO salespersons (staff_id, name, store) VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- Вставка данных в таблицу invoices
-- Здесь car_id, customer_id, salesperson_id — это ссылки на авто-сгенерированные id из соответствующих таблиц
-- Предполагаем, что авто-инкремент присвоит id в том же порядке, в каком вставлялись данные

INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
('852399038', '2018-08-22', 1, 1, 3),
('731166526', '2018-12-31', 3, 3, 5),
('271135104', '2019-01-22', 2, 2, 7);

SELECT * FROM cars WHERE id IN (1, 2, 3);

SHOW COLUMNS FROM cars;
