USE lab_mysql;

INSERT INTO car (VIN, model, year, color, manufacturer) 
values ('3K096I98581DHSNUP', 'Tiguan', '2019', 'Blue', 'Volkswagen'),
       ('ZM8G7BEUQZ97IH46V', 'Rifter', '2019','Red', 'Peugeot'),
       ('RKXVNNIHLVVZOUB4M', 'Fusion', '2018', 'White', 'Ford'), 
       ('HKNDGS7CU31E9Z7JW', 'RAV4','2018','Silver','Toyota'); 
       
INSERT INTO customer (customer_id, name, phone_number, email, address, city, state, country, postal_code)
values ('10001', 'Pablo Picasso', '+34 636 17 63 82', 'pablo@email.com','Paseo de la Chopera, 14' , 'Madrid', 'Madrid', 'Spain', '28045'), 
       ('20001', 'Abraham Lincoln', '+1 305 907 7086', 'abraham@email.com','	120 SW 8th St' , 'Miami', 'Florida', 'United States', '33130'), 
       ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'napoleon@email.com','40 Rue du Colisée' , 'Paris', 'Île-de-France', 'France', '75008');
       

INSERT INTO salesperson (salesperson_id, name, store)
values ('00001', 'Petey Cruiser','Madrid'),
	   ('00002', 'Anna Sthesia', 'Barcelona'),
       ('00003', 'Paul Molive', 'Berlin'),
       ('00004', 'Gail Forcewind', 'Paris'), 
       ('00005', 'Paige Turner', 'Miami');
       
INSERT INTO invoice (invoice_number, VIN, customer_id, salesperson_id, date, quantity, store)
VALUES 
(1000001, '3K096I98581DHSNUP', 10001, 1, '2024-01-15', 1, 'Madrid'),
(1000002, 'ZM8G7BEUQZ97IH46V', 20001, 5, '2024-02-20', 2, 'Miami'),
(1000003, 'RKXVNNIHLVVZOUB4M', 30001, 4, '2024-03-25', 1, 'Paris'),
(1000004, 'HKNDGS7CU31E9Z7JW', 10001, 2, '2024-04-10', 1, 'Barcelona'),
(1000005, '3K096I98581DHSNUP', 30001, 3, '2024-05-05', 1, 'Berlin'),
(1000006, 'RKXVNNIHLVVZOUB4M', 20001, 5, '2024-06-15', 1, 'Miami');

       