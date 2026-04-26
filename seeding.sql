 USE lab_mysql;

INSERT INTO cars (id, vin, manufacturer, model, year, colour)
VALUES 
(1, '3K096I98581DHSNP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM9G7BEUQ97VHLHV', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXNIN7YUIO2V4U4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKDN7D5CU31E9TP7V', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2W6V6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2W6V6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (id, customer_id, name, address, email)
VALUES 
(000, 10001, 'Pablo Picasso', 'Paseo de la Chopera Madrid Spain', '-'),
(001, 20001, 'Abraham Lincoln', '120 SW 8th St Miami United States', '-'),
(002, 30001, 'Napoléon Bonaparte', '40 Rue du Colisée Paris France', '-');

INSERT INTO salespersons (id, staff_id, name)
VALUES 
(0001, 00001, 'Petey Cruiser'),
(0002, 00002, 'Anna Sthesia'),
(0003, 00003, 'Paul Molive'),
(0004, 00004, 'Gail Forcewind'),
(0005, 00005, 'Paige Turner'),
(0006, 00006, 'Bob Frapples'),
(0007, 00007, 'Walter Melon'),
(0008, 00008, 'Shonda Leer');

INSERT INTO invoices (id, invoice_number, date, car_id, customer_id, staff_id)
VALUES 
(1000, 852399038, 22-08-2018, 1, 1, 3),
(2000, 731166526, 31-12-2018, 3, 3, 5),
(3000, 271135104, 22-01-2019, 2, 2, 7);
