INSERT INTO cars (VIN, manufacterer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'white'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'other'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'grey'),
       ('DAM41UDN3CHU2WVF9', 'Volvo', 'V60 Cross coUNTRY', 2019, 'grey'
       );
       
INSERT INTO clients (id_client, name, phone, mail, address, city, state, country, CP) 
VALUES (10001, 'Pab Picasso', 636176382, 'picasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 280045),
(20001, 'Abr Lincoln', 304907708, 'lincolnabraham@hotmail.com', '120 SW 8th St', 'Miami', 'Florida', 'EEUU', 33130), 
(30001, 'Nap Bonaparte', 179754000, 'bonipart3@terra.es','40 Rue du Colisee', 'Paris', 'ile-de-fance', 'France', 75008
); 

INSERT INTO salesperson (id_salesperson, name, shop)
VALUES 
('00001', 'Petey Cruiser', 'North'),
('00002', 'Anna Sthesia', 'West'),
('00003', 'Paul Molive', 'North'),
('00004', 'Gail Forcewind', 'East'),
('00005', 'Paige Turner', 'East'),
('00006', 'Bob Frapples', 'West'),
('00007', 'Walter Melon', 'South'),
('00008', 'Shonda Leer', 'South');

INSERT INTO invoices (num_invoice, id_client, id_salesperson, date, car) 
VALUES ('852399038', 10001, 00007, '2018-08-22','3K096I98581DHSNUP'),
('731166526', 20001, 00001, '2018-12-31','HKNDGS7CU31E9Z7JW'),
('271135104', 30001, 00002, '2018-01-22','DAM41UDN3CHU2WVF6');
