INSERT INTO Customers (custoimer_ID, name, phone_number, address, city, `state/province`, country, `zip/postal_code`)
VALUES ('10001', 'Pablo Picasso', 00346361763, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       ('20001', 'Abraham Lincoln', 00130590770, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       ('30001', 'Napoléon Bonaparte', 00331797540, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
       
       INSERT INTO Cars (VIN, manufacturer, model, year, color)
VALUES ('3K096I9858', 'Volkswagen', 'Tiguran', 2019, 'Blue'),
       ('ZM8G7BEUQZ', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLV', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU3', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('DAM41UDN3C', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3C', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
   INSERT INTO Salespersons (staff_ID, name, store)
VALUES ('00001', 'Petey Cruiser', 'Madrid'),
       ('00002', 'Anna Sthesia', 'Barcelona'),
       ('00003', 'Paul Molive', 'Berlin'),
       ('00004', 'Gail Forcewind', 'Paris'),
       ('00005', 'Paige Turner', 'Mimia'),
       ('00006', 'Bob Frapples', 'Mexico City'),
       ('00007', 'Walter Melon', 'Amsterdam'),
       ('00008', 'Shonda Leer', 'São Paulo');
       
        INSERT INTO Invoices (invoice_number, date_rental, VIN, customer_ID, staff_ID)
VALUES (852399038, 22-08-2018, 'RKXVNNIHLV', '10001', '00001'),
       (731166526, 31-12-2018, 'HKNDGS7CU3', '20001', '00003'),
       (271135104, 22-01-2019, 'DAM41UDN3C', '30001', '00006');