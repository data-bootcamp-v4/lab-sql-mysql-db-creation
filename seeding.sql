SHOW DATABASES;
USE `lab_mysql`;

DELETE FROM Car WHERE vin = '3K096I98581DHSNUP';


INSERT IGNORE INTO Car (vin, manufacturer, model, cars_year, cars_color)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAM41UDN3CHU2WVF8', 'Volvo', 'V60 Cross Country', 2019, 'Gray'); -- Changed VIN here

USE `lab-sql-mysql-db-creation`;

INSERT IGNORE INTO Customers (customer_ID, customer_name, phone_number, email, address, city, state_province, country, zip_postal)
VALUES 
    ('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

SELECT * FROM Car;
SELECT * FROM Customers;

INSERT IGNORE INTO Salespersons (staff_ID, staff_name, store)
VALUES 
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind', 'Paris'),
    ('00005', 'Paige Turner', 'Miami'),
    ('00006', 'Bob Frapples', 'Mexico City'),
    ('00007', 'Walter Melon', 'Amsterdam'),
    ('00008', 'Shonda Leer', 'São Paulo');

SELECT * FROM Salespersons;

INSERT IGNORE INTO Invoices (invoice_number, invoices_date, car_id, customer_id, salesperson_id)
VALUES
    (852399038, '2018-08-22', 1, 1, 3),
    (731166526, '2018-12-31', 3, 3, 5),
    (271135104, '2019-01-22', 2, 2, 7);


