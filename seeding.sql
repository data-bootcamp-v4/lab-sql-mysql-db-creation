USE lab_mysql;

INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray'),
('5YJ3E1EA4KF123456', 'Tesla', 'Cybertruck', 2024, 'Silver');

INSERT INTO customer (name, phone_number, email, address, city, state_provence, country, zip_postcode)
VALUES 
('Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008'),
('Medilin', '+1 555 123 4567', 'medilin@email.com', '123 Tech Street', 'San Francisco', 'California', 'United States', '94102');

INSERT INTO sales_person (staff_id, name, store)
VALUES 
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Miami'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoice (staff_id, vin, customer_id, created_at)
VALUES 
('00003', '3K096I98581DHSNUP', 1, '2018-08-22'),
('00005', 'RKXVNNIHLVVZOUB4M', 3, '2018-12-31'),
('00007', 'ZM8G7BEUQZ97IH46V', 2, '2019-01-22'),
('00001', '5YJ3E1EA4KF123456', 4, '2024-01-15');