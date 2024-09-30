INSERT INTO cars (manufacturer, model, year , color)
VALUES ('Renault', 'R5', 1985, 'Black'),
       ('Peugeot', '308', 2020, 'Grey'),
       ('Citroen', 'C5', 2015 , 'Green');
       
  -- name, phone, email , address, city, state_province, country, zip_code, year, vehicle_id     
INSERT INTO customers (name, phone, email , address, city)
VALUES ('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14' , 'Madrid'),
       ('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St' , 'Miami'),
       ('Napoléon Bonaparte', '+33 1 79 75 40 00', '-' , '40 Rue du Colisée' , 'Paris');
       
INSERT INTO Salespersons (name, store)
VALUES ('Petey Cruiser', 'Madrid'),
       ('Anna Sthesia', 'Barcelona'),
       ('Paul Molive', 'Berlin'),
       ('Gail Forcewind', 'Paris'),
       ('Paige Turner', 'Mimia'),
       ('Bob Frapples', 'Mexico City');
       
INSERT INTO Invoices (date, car, customer, salesperson)
VALUES ( '2018-08-22', 1, 1 , 3),
		( '2018-12-31', 3, 3 , 5),
        ( '2019-01-22', 2, 2 , 7)
