USE lab_mysql;

INSERT INTO cars (id, VIN, manufacturer, model, year, color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');  

ALTER TABLE customers
MODIFY COLUMN phone_number VARCHAR(20);

INSERT INTO customers (customer_id, name, email, phone_number, address, city, country, postal_code)
VALUES (10001, 'Pablo Picasso', 'ppicasso@gmail.com', '+34 636 176 382', 'Paseo de la Chopera, 14', 'Madrid', 'Spain', 28045),
       (20001, 'Abraham Lincoln', '-', '13059077086', '120 SW 8th St', 'Miami', 'United States', 33130),
       (30001, 'Napoléon Bonaparte', '-', '33179754000', '40 Rue du Colisée', 'Paris', 'France', 75008);

INSERT INTO invoices (invoice_number, date, car_id, customer_id, staff_id)
VALUES (852399038, '2018-08-22', 1, 10001, 1),  
       (731166526, '2018-12-31', 3, 30001, 3),
       (271135104, '2019-01-22', 2, 20001, 2);

INSERT INTO salespersons (staff_id, name, store)
VALUES (1, 'Petey Cruiser', 'Madrid'),
       (2, 'Anna Sthesia', 'Barcelona'),
       (3, 'Paul Molive', 'Berlin'),
       (4, 'Gail Forcewind', 'Paris'),
       (5, 'Paige Turner', 'Miami'),  
       (6, 'Bob Frapples', 'Mexico City'),
       (7, 'Walter Melon', 'Amsterdam'),
       (8, 'Shonda Leer', 'São Paulo');
