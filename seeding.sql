USE lab_mysql;

INSERT INTO cars (car_id, car_vin, manufacturer, model, year, color)
VALUES ('1', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('2', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('3', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('4', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('5', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
INSERT INTO customers (customer_id, name, phone_number, email, street, city, country, zip_postal_code)
VALUES ('1', 'Pablo Picasso', '+34 636 17 63 82', ' ', 'Paseo de la Chopera 14', 'Madrid', 'Spain', '28045'),
       ('2', 'Abraham Lincoln', '+1 305 907 7086', ' ', '120 SW 8th Street', 'Miami', 'United States', '33130'),
       ('3', 'Napoléon Bonaparte', '+33 1 79 75 40 00', ' ', '40 Rue du Colisée', 'Paris', 'France', '75008');
       
INSERT INTO salespersons (staff_id, name, store)
VALUES ('1', 'Peter Cruiser', 'Madrid'),
       ('2', 'Anna Stesia', 'Barcelona'),
       ('3', 'Paul Molive', 'Berlin'),
       ('4', 'Gail Forcewind', 'Paris'),
       ('5', 'Paige Turner', 'Miami'),
       ('6', 'Bob Frapples', 'Mexico City'),
       ('7', 'Walter Melon', 'Amsterdam'),
       ('8', 'Shonda Leer', 'Sao Paulo');

INSERT INTO invoices (invoice_id, number, date, car_id, customer_id, staff_id)
VALUES ('1', '852399038', '2018-08-22', '1', '1', '3'),
       ('2', '731166526', '2018-12-31', '3', '3', '5'),
       ('3', '271135104', '2019-01-22', '2', '2', '7');