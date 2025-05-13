USE lab_mysql;

-- Insertar datos en cars
INSERT INTO cars (vin) VALUES
('3K096I98581DH5NUP'),
('ZMG87BEUIO297IH46V'),
('RKKV0NH1HLVZU0BAM'),
('HKNDGS7CU31E9ZTJW'),
('DAM41UDN3CHU2WWF6');

-- Insertar datos en customers
INSERT INTO customers (customer_id) VALUES
(10001),
(20001),
(30001);

-- Insertar datos en salespersons
INSERT INTO salespersons (staff_id) VALUES
(00001),
(00002),
(00003),
(00004),
(00005),
(00006),
(00007),
(00008);

-- Insertar datos en invoices
INSERT INTO invoices (invoice_number, customer_id, car_id, salesperson_id) VALUES
(852399038, 1, '3K096I98581DH5NUP', 3),
(731166526, 3, 'DAM41UDN3CHU2WWF6', 5),
(271135104, 2, 'ZMG87BEUIO297IH46V', 7);

SELECT * FROM cars;
