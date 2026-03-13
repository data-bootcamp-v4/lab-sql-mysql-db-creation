USE rentaldblab;

INSERT INTO cars (car_id, vin, model, year, color, price, status, manufacturer) VALUES
(1, '3K096I98581DHSNUP', 'Tiguan',           2019, 'Blue',   25000.00, 'Available', 'Volkswagen'),
(2, 'ZM8G7BEUQZ97IH46V', 'Rifter',           2019, 'Red',    22000.00, 'Sold',      'Peugeot'),
(3, 'RKXVNNIHLVVZOUB4M', 'Fusion',           2018, 'White',  19500.00, 'Sold',      'Ford'),
(4, 'HKNDGS7CU31E9Z7JW', 'RAV4',             2018, 'Silver', 27000.00, 'Sold',      'Toyota'),
(5, 'DAM41UDN3CHU2WVF6', 'V60',              2019, 'Gray',   31000.00, 'Pending',   'Volvo'),
(6, 'DAM41UDN3CHU2WVF6', 'V60 Cross Country',2019, 'Gray',   35000.00, 'Pending',   'Volvo');

INSERT INTO customer (customerID, name, phone, email, address, zip, city, state, country) VALUES
(1, 'Pablo Picasso',      '+34 636 17 63 82',  '-', 'Paseo de la Chopera, 14', '28045', 'Madrid',      'Madrid',        'Spain'),
(2, 'Abraham Lincoln',    '+1 305 907 7086',   '-', '120 SW 8th St',           '33130', 'Miami',       'Florida',       'United States'),
(3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée',       '75008', 'Paris',       'Île-de-France', 'France'),
(4, 'Julius Caesar',      '+39 06 6988 3145',  '-', 'Via della Conciliazione', '00193', 'Rome',        'Lazio',         'Italy'),
(5, 'Cleopatra VII',      '+20 2 2736 5800',   '-', '15 El-Manial Street',     '11451', 'Cairo',       'Cairo',         'Egypt'),
(6, 'Genghis Khan',       '+976 11 320 777',   '-', 'Sukhbaatar Square 1',     '14200', 'Ulaanbaatar', 'Töv',           'Mongolia'),
(7, 'Marie Curie',        '+48 22 659 8000',   '-', 'ul. Freta 16',            '00227', 'Warsaw',      'Masovia',       'Poland'),
(8, 'Leonardo da Vinci',  '+39 0571 960 84',   '-', 'Via Leonardo da Vinci 1', '50059', 'Vinci',       'Tuscany',       'Italy');

INSERT INTO salesperson (salesperson_id, staff_id, name, phone, email, store) VALUES
(1, '00001', 'Petey Cruiser',  '+34 91 000 0001', 'petey@dealer.com',  'Madrid'),
(2, '00002', 'Anna Sthesia',   '+34 93 000 0002', 'anna@dealer.com',   'Barcelona'),
(3, '00003', 'Paul Molive',    '+49 30 000 0003', 'paul@dealer.com',   'Berlin'),
(4, '00004', 'Gail Forcewind', '+33 1 000 0004',  'gail@dealer.com',   'Paris'),
(5, '00005', 'Paige Turner',   '+38 44 000 0005', 'paige@dealer.com',  'Mimia'),
(6, '00006', 'Bob Frapples',   '+52 55 000 0006', 'bob@dealer.com',    'Mexico City'),
(7, '00007', 'Walter Melon',   '+31 20 000 0007', 'walter@dealer.com', 'Amsterdam'),
(8, '00008', 'Shonda Leer',    '+55 11 000 0008', 'shonda@dealer.com', 'São Paulo');

INSERT INTO invoices (invoiceID, invoice_number, payment_method, total_amount, sale_price, invoice_date) VALUES
(1, 852399038, 'Credit Card',   25000.00, 24500.00, '2018-08-22'),
(2, 731166526, 'Bank Transfer', 19500.00, 18900.00, '2018-12-31'),
(3, 271135104, 'Cash',          22000.00, 21500.00, '2019-01-22'),
(4, 394872615, 'Credit Card',   27000.00, 26500.00, '2019-03-15'),
(5, 512843790, 'Financing',     31000.00, 30500.00, '2019-05-08'),
(6, 678234501, 'Bank Transfer', 35000.00, 34000.00, '2019-07-19'),
(7, 743921856, 'Cash',          25000.00, 24000.00, '2019-09-03'),
(8, 891045237, 'Credit Card',   19500.00, 19000.00, '2019-11-27');

INSERT INTO orders (orderid, order_number, order_date, customer_id, car_id, salesperson_id, status, notes, invoiceID) VALUES
(1, 10001, '2018-08-22', 1, 1, 3, 'Completed', 'Customer paid in full.',         1),
(2, 10002, '2018-12-31', 3, 3, 5, 'Completed', 'Trade-in applied.',              2),
(3, 10003, '2019-01-22', 2, 2, 7, 'Completed', 'Delivered to customer address.', 3),
(4, 10004, '2019-03-15', 4, 4, 1, 'Completed', 'Extended warranty purchased.',   4),
(5, 10005, '2019-05-08', 5, 5, 2, 'Pending',   'Awaiting financing approval.',   5),
(6, 10006, '2019-07-19', 6, 6, 4, 'Pending',   'Customer requested delivery.',   6),
(7, 10007, '2019-09-03', 3, 1, 6, 'Cancelled', 'Customer changed their mind.',   7),
(8, 10008, '2019-11-27', 1, 3, 8, 'Completed', 'Repeat customer, VIP discount.', 8);

