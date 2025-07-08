USE lab_mysql;

INSERT INTO customers(Name, Email, Phone, City, State, Country, Zip_code)
VALUES ('Pablo Picasso', 'ppicasso@gmail.com', '+34 636 17 63 82', 'Madrid', 'Madrid', 'Spain', '28045'),
       ('Abraham Lincoln', 'lincoln@us.gov', '+1 305 907 7086', 'Miami', 'Florida', 'United States', '33130'),
       ('Napoléon Bonaparte', 'hello@napoleon.com', '+33 1 79 75 40 00', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons(Name, Store)
VALUES ('Petey Cruiser', 'Madrid'), 
       ('Anna Sthesia', 'Barcelona'),
       ('Paul Molive', 'Berlin'),
       ('Gail Forcewind', 'Paris'), 
       ('Paige Turner', 'Miami'), 
       ('Bob Fraples', 'Mexico City'), 
       ('Walter Melon', 'Amsterdam'), 
       ('Shonda Leer', 'Sao Paulo');
   
INSERT INTO cars(VIN, Manufacturer, Model, Year, Color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan','2019','Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018',	'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2019',	'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');
       
SET SQL_SAFE_UPDATES = 0;
DELETE FROM cars
WHERE Car_ID = 6;

SELECT * FROM cars;
    
INSERT INTO invoices(Date, Customer_ID, Staff_ID, Car_ID)
VALUES  ('2018-08-22', 1, 1, 1),
        ('2018-12-31', 2, 2, 2),
        ('2019-01-22', 3, 3, 3);