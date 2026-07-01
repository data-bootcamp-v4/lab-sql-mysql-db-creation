INSERT INTO cars (
	vin_id, 
	manufacturer_name, 
	model, 
	year, 
	colour
)
VALUES
('1HGCM82633A123456', 'Honda', 'Civic', 2022, 'Blue'),
('2FTRX18W1XCA12345', 'Ford', 'F-150', 2021, 'Black'),
('WVWZZZ1JZXW000001', 'Volkswagen', 'Golf', 2023, 'White');

INSERT INTO customers (
    customer_id,
    customer_name,
    phone_no, 
    email,
    address,
    city,
    state_province,
    country,
    post_code
    )
VALUES
    (
    'CUST001',
    'John Smith',
    '+31-555-123-4567',
    'john.smith@email.com',
    'Maple Straat 123 ',
    'Amsterdam',
    'North Holland',
    'The Netherlands',
    '2089 PY'
	),
	(
    'CUST002',
    'Emma Johnson',
    '+31-20-7946-1234',
    'emma.johnson@email.com',
    'Hogestraat 45',
    'Utrecht',
    'Utrecht',
    'The Netherlands',
    '1012 VL'
	),
	(
    'CUST003',
    'Liam Brown',
    '+31-2-9876-5432',
    'liam.brown@email.com',
    'Rijkstraat 100',
    'Haarlem',
    'Noord Holland',
    'The Netherlands',
    '2066 RB'
),
(
    'CUST004',
    'Sophie Martin',
    '+33-1-45-67-89-10',
    'sophie.martin@email.com',
    'Planetenlaan 38',
    'Haarlem',
    'North Holland',
    'The Netherlands',
    '2089 RW'
),
(
    'CUST005',
    'Noah Wilson',
    '+31-20-123-4567',
    'noah.wilson@email.com',
    'Pijnboomstraat 15',
    'Amsterdam',
    'North Holland',
    'Netherlands',
    '1012 AB'
);

SELECT * FROM customers;

INSERT INTO salespersons (
	sta_id,
    staff_id, 
    staff_name, 
    store_name
)
VALUES
(1, 2001, 'Sanne de Vries', 'Haarlem Centrum'),
(2, 2002, 'Jeroen Bakker', 'Haarlem Centrum'),
(3, 2003, 'Lotte Visser', 'Haarlem Centrum'),
(4, 2004, 'Mark Jansen', 'Amsterdam Dam'),
(5, 2005, 'Eva Smit', 'Amsterdam Dam'),
(6, 2006, 'Noah de Boer', 'Amsterdam Dam'),
(7, 2007, 'Daan van Dijk', 'Utrecht Hoog Catharijne'),
(8, 2008, 'Femke Meijer', 'Utrecht Hoog Catharijne'),
(9, 2009, 'Tom van Leeuwen', 'Utrecht Hoog Catharijne');

SELECT * FROM salespersons;

INSERT INTO invoices (
    invoice_no, 
    invoice_date,
    car_id,
    cust_id,
    sta_id
)
VALUES
('INV-1001', '2026-01-10 10:15:00', 1, 1, 1),
('INV-1002', '2026-01-12 14:30:00', 2, 2, 4),
('INV-1003', '2026-01-15 09:45:00', 3, 3, 7),
('INV-1004', '2026-01-18 11:20:00', 1, 4, 2),
('INV-1005', '2026-01-20 16:05:00', 2, 5, 5),
('INV-1006', '2026-01-22 13:40:00', 3, 1, 8),
('INV-1007', '2026-01-25 10:00:00', 1, 2, 3),
('INV-1008', '2026-01-27 15:25:00', 2, 3, 6),
('INV-1009', '2026-01-29 12:10:00', 3, 4, 9);

SELECT * FROM invoices;