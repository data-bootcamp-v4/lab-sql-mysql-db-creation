USE lab_mysql;

INSERT INTO cars (id, vin, fabricante, modelo, ano, cor)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Vermelho'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusão', 2018, 'Branco'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Prata'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Cinza'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross País', 2019, 'Cinza');
SELECT * FROM cars;

INSERT INTO customers (id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Espanha', '28045'),
(1, 20001, 'Abraão Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Flórida', 'Estados Unidos', '33130'),
(2, 30001, 'Napoleão Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'França', '75008');
SELECT * FROM customers;

INSERT INTO salespersons (id, staff_id, name, store)
VALUES
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Estésia', 'Barcelona'),
(3, '00003', 'Paulo Molive', 'Berlim'),
(4, '00004', 'Gail Forçavento', 'Paris'),
(5, '00005', 'Paige Turner', 'Miami'),
(6, '00006', 'Bob Frapples', 'Cidade do México'),
(7, '00007', 'Walter Melão', 'Amesterdão'),
(8, '00008', 'Shonda Leer', 'São Paulo');
SELECT * FROM salespersons;

INSERT INTO invoices (id, invoice_number, date, car, customer, salesperson)
VALUES
(1, 852399038, '2018-08-22', 1, 10001, '00003'),
(2, 731166526, '2018-12-31', 3, 30001, '00005'),
(3, 271135104, '2019-01-22', 2, 20001, '00007');
SELECT * FROM invoices;

