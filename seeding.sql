USE lab_mysql;

INSERT INTO cars (manufacturer, model, year, color)
VALUES ('Volkswagen', 'Tiguan', '2019', 'Blue'),
       ('Peugeot', 'Rifter', '2019', 'Red'),
       ('Ford', 'Fusion', '2018', 'White'),
       ('Toyota', 'RAV4', '2014', 'Silver'),
       ('Volvo', 'V60', '2019', 'Gray'),
       ('Volvo', 'V60 Cross Country', '2019', 'Gray');
	
INSERT INTO customers (name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES ('Pablo Picasso', '+34 636 17 63 82', 'pablopicasso@email.com','Paseo de la Chopera 14', 'Madrid','Madrid','Spain', '28045'),
       ('Abraham Lincoln', '+1 305 907 7086', 'abraham@email.com','120 SW 8th St', 'Miami', 'Florida','United States', '33130'),
       ('Napoleon Bonaparte', '+33 636 17 63 82', 'napoleonbonaparte@email.com','40 Rue du Colisée', 'Paris','Île-de-France','France', '75008');
       
INSERT INTO salesperson (name, store)
VALUES ('Petey Cruiser', 'Madrid'),
       ('Anna Sthesia',	'Barcelona'),
       ('Paul Molive',	'Berlin'),
       ('Gail Forcewind', 'Paris'),
       ('Paige Turner',	'Mimia'), 
       ('Bob Frapples',	'Mexico City'),
       ('Water Melon', 'Amsterdam'),
       ('Shonda Leer', 'São Paulo'); 

INSERT INTO invoices (date, car_id, customer_id, staff_id)
VALUES ('2018-08-22', '1', '1', '3'),
       ('2018-12-31', '3', '3', '5'),
       ('2019-01-22', '2', '2', '7');
