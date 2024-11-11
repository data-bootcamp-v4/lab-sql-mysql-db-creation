INSERT INTO cars (id, VIN, manufacturer, model, year, color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       (6, 'DAJUW83DMSN198V64', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (id, customer_id, name, phone_num, email, adress, city, state_province, country, zip_postal)
VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       (1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       (2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES (1, 1, 'Petey Cruiser', 'Madrid'),
       (2, 2, 'Anna Sthesia', 'Barcelona'),
       (3, 3, 'Paul Molive', 'Berlin'),
       (4, 4, 'Gail Forcewind', 'Paris'),
       (5, 5, 'Paige Turner', 'Miami'),
       (6, 6, 'Bob Frapples', 'Mexico City'),
       (7, 7, 'Walter Melon', 'Amsterdam'),
       (8, 8, 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (id, invoice_number, invoice_date, car, customer, salesperson)
VALUES (1, 852399038, '2018-08-22', '3K096I98581DHSNUP', 10001, 1),
       (2, 731166526, '2018-12-31', 'RKXVNNIHLVVZOUB4M', 30001, 5),
       (3, 271135104, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 20001, 7);
