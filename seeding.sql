
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');


INSERT INTO customers (customerID, name, phone_number, email, address, city, state_province, zip_postalcode) VALUES 
('10001', 'Pablo Picasso', '+34 636 17 63 82', 'example@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', 'example1@gmail.com', '120 SW 8th St', 'Miami', 'Florida', '33130'),
('30001', 'Napoleón Bonaparte', '+33 1 79 75 40 00', 'example2@gmail.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', '75008');


INSERT INTO salespersons (staffID, name, store) VALUES 
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Steshia', 'Barcelona'),
('00003', 'Paul Molive', 'Paris');


INSERT INTO invoices (invoice_number, date, car, customer, salesperson) VALUES 
('852399038', '2018-08-22', '3K096I98581DHSNUP', '10001', '00003'),
('731166526', '2018-12-31', 'RKXVNNIHLVVZOUB4M', '30001', '00002'),
('271135104', '2019-01-22', 'ZM8G7BEUQZ97IH46V', '20001', '00001');