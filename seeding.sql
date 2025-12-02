USE lab_mysql;

INSERT INTO customers (id, customer_id, customer_name, customer_phone_number, customer_email, customer_address, customer_cityname, customer_state_province, customer_country_name, customer_postal_code)
VALUES (0, 10001, 'John Doe', +34636176382, 'johndoe@example.com', 'Paseo de la Chopera, 14', 'Madrid',	'Madrid', 'Spain', 28045),
       (1, 20001, 'Jane Smith', +13059077086, 'janesmith@example.com', '120 SW 8th St',	'Miami', 'Florida',	'United States', 33130),
       (2, 30001, 'Bob Johnson', +33179754000, 'bobjohnson@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
       
INSERT INTO cars (car_id, vehicle_identification_number, manufacturer, model, year, color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       (2,	'ZM8G7BEUQZ97IH46V', 'Peugeot Rifter', 2019, 'Red'),
       (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       (4,	'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       (5,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       (6,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Cross Country', 2019, 'Gray');
       
INSERT INTO salespersons (sales_ID, staff_id, staff_name, store_name)
VALUES (1, 00001, 'Petey Cruiser', 'Madrid'),
(2,	00002, 'Anna Sthesia', 'Barcelona'),
(3,	00003, 'Paul Molive', 'Berlin'),
(4,	00004, 'Gail Forcewind', 'Paris'),
(5,	00005,	'Paige Turner',	'Mimia'),
(6,	00006,	'Bob Frapples',	'Mexico City'),
(7,	00007,	'Walter Melon',	'Amsterdam'),
(8,	00008,	'Shonda Leer', 'São Paulo');

INSERT INTO invoices (invoice_ID, invoice_number, invoice_date, car_id, customer_id, sales_ID)
VALUES (1, 852399038, 22-08-2018, 1, 1, 3),
(2, 731166526, 31-12-2018, 3, 3, 5),
(3, 271135104, 22-01-2019, 2, 2, 7);

