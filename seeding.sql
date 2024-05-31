use lab_mysql;
INSERT INTO cars (VIN, manufacturer, model, year, color, price)
VALUES (1001, 'Volkswagen', 'Tiguan', 2020, 'blue',36000 ),
       (1003, 'Volvo', 'V60', 2020, 'red', 42000),
       (1004, 'Peugeot', 'Rifter', 2019, 'white', 27000),
       (1005, 'Toyota', 'RAV4', 2018, 'white', 35500),
       (1006, 'Toyota', 'RAV4', 2018, 'black', 36500),
       (1007, 'Ford', 'Fusion', 2018, 'red', 39900),
       (1008, 'Peugeot', 'Rifter', 2019, 'black',29900),
       (1009, 'Volvo', 'V60 Cross Country', 2020, 'green', 36750.20);
       
INSERT INTO customers (customer_id, full_name, phone_number, address, city, state, country, zip_code)
VALUES (9001, 'Pablo Picasso', '+34 636 17 63 82',  '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 36000 ),
       (9003, 'Abraham Lincoln', '+1 305 907 7086',  '120 SW 8th St', 'Miami', 'Florida', 'United States', 42000),
       (9004, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'Paseo de la Chopera, 14', 'Madrid','Madrid', 'Spain', 27000);

INSERT INTO sales_person (staff_id, full_name, store_id)
VALUES (100111, 'Petey Cruiser', 22 ),
       (100311, 'Anna Sthesia',  23),
       (100411, 'Paul Molive',  27),
       (100511, 'Gail Forcewind',  24),
       (100611, 'Paige Turner',  25),
       (100711, 'Bob Frapples',   23),
       (100811, 'Walter Melon',  27),
       (100911, 'Shonda Leer',  20);

INSERT INTO invoices (invoice_number, date, VIN, customer_id, staff_id)
VALUES (2549001, '2018-08-22', 1007,  9022,360001),
       (4369003, '2018-12-18', 1010,  9023,420001),
       (4369004, '2002-01-19', 1022, 9024, 270002);
       
       
       