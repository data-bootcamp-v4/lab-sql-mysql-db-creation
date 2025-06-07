INSERT INTO car (car_id, vin, manufacture, model, year, color)
VALUES
(1, '3K096I98581DHSNUP','Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF8', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customer (customer_id, name, phone, email, address, city, state, country, zip_code)
VALUES
(10001, 'Kurt Cobain', '+41 543 789 7865', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(10002, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(10003, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
(10004
INSERT INTO salesperson (salesperson_id, name, email, store)
VALUES 
('1', 'Petey Cruiser', '-', 'Madrid'),
('2', 'Anna Sthesia', '-', 'Barcelona'),
('3', 'Paul Molive', '-', 'Berlin'),
('4', 'Gail Forcewind', '-', 'Paris'),
('5', 'Paige Turner', '-', 'Mimia'),
('6', 'Bob Frapples', '-', 'Mexico City'),
('7', 'Walter Melon', '-', 'Amsterdam'),
('8', 'Shonda Leer', '-', 'São Paulo');

INSERT INTO invoice (invoice_number,car_id,customer_id,salesperson_id,date_of_invoice)
VALUES
(1, 1, 10001, '1', '2018-08-22'),
(3, 2, 10002, '2', '2018-12-31'),
(2, 3, 10003, '3', '2019-01-22');

