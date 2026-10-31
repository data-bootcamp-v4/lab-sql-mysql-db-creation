USE lab_mysql;

INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (customer_id, name, phone, email, address, city, state_province, country, zip_postal_code) VALUES
('10001', 'Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', 'lincoln@us.gov', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoleon Bonaparte', '+33 1 79 75 40 00', 'hello@napoleon.me', '40 Rue du Colis', 'Paris', 'Ile-de-France', 'France', '75008');

INSERT INTO salespersons (staff_id, name, store) VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin');

INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, salesperson_id) VALUES
('852399038', '2018-08-22', 1, 1, 1),
('731166526', '2018-12-31', 3, 2, 3),
('271135104', '2019-01-22', 2, 3, 2);

SELECT * FROM cars;
SELECT * FROM invoices;