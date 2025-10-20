-- seeding the tables with data --

-- selecting the database
USE lab_mysql;

-- seeding the table cars --
INSERT INTO cars (
    car_VIN_number,
    manufacturer,
    model,
    production_year,
    color
)
VALUES 
('KK096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('V60CC2019XYZ99999', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- seeding the table customers --
INSERT INTO customers (
    customer_ID,
    customer_name,
    phone_number,
    email,
    address,
    city,
    state_province,
    country,
    zip_code)
VALUES 
('10001', 'Pablo Picasso', '+34 636 17 63 82', 'picasso@example.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', 'lincoln@example.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'bonaparte@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- seeding the table salespersons --
INSERT INTO salespersons (
    staff_ID,
    salesperson_name,
    store_ID)
VALUES 
('00001', 'Petey Cruiser', 'S-Madrid'),
('00002', 'Anna Sthesia', 'S-Barcelona'),
('00003', 'Paul Molive', 'G-Berlin'),
('00004', 'Gail Forcewind', 'F-Paris'),
('00005', 'Paige Turner', 'USA-Miami'),
('00006', 'Bob Frapples', 'M-Mexico City'),
('00007', 'Walter Melon', 'N-Amsterdam'),
('00008', 'Shonda Leer', 'B-São Paulo');

-- seeding the table invoices --
INSERT INTO invoices (
    invoice_number,
    sale_date,
    car_VIN_number,
    customer_ID,
    staff_ID)
VALUES 
('852399038', '2018-08-22', 'ZM8G7BEUQZ97IH46V', '10001', '00003'),
('731166526', '2018-12-31', 'HKNDGS7CU31E9Z7JW', '30001', '00005'),
('271135104', '2019-01-22', 'DAM41UDN3CHU2WVF6', '20001', '00007');

-- check inserted data --
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;
