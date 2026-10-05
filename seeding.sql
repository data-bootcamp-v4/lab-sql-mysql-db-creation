USE cars_seller;

-- 1. Seed Cars Table
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3HGCP2F8XJH000001', 'Honda', 'Civic', 2020, 'Blue'),
('1FA6P8CFXH5000002', 'Ford', 'Mustang', 2018, 'Red'),
('SALWR2V4XHA000003', 'Land Rover', 'Range Rover', 2022, 'Black'),
('WA1VAFB4XHA000004', 'Audi', 'A4', 2021, 'White');

-- 2. Seed Customers Table
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Castellana 45', 'Madrid', 'Madrid', 'Spain', '28046'),
(10002, 'Abraham Lincoln', '+1 305 907 7086', 'lincoln@whitehouse.gov', '1600 Pennsylvania Ave NW', 'Washington', 'D.C.', 'United States', '20500'),
(10003, 'Napoleon Bonaparte', '+33 1 42 27 78 66', 'nbonaparte@empire.fr', 'Rue Saint-Honoré 213', 'Paris', 'Île-de-France', 'France', '75001');

-- 3. Seed Salespersons Table
INSERT INTO salespersons (staff_id, name, store) VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris');

-- 4. Seed Invoices Table
-- (Using the auto-incremented IDs from the referenced tables)
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 3, 1),
(271135104, '2019-01-22', 2, 2, 2);
