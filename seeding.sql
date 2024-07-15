SHOW CREATE TABLE cars;

SELECT
    CONSTRAINT_NAME,
    TABLE_NAME,
    COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    REFERENCED_TABLE_NAME = 'cars'
    AND REFERENCED_COLUMN_NAME = 'VIN';
    
ALTER TABLE Invoices DROP FOREIGN KEY invoices_ibfk_1;

ALTER TABLE cars DROP INDEX VIN;

INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V','Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
SELECT 
    *
FROM
    cars;

INSERT INTO Customers (customerID, name, phonenumber, email, address, city, state_province, country, zip_postal_code)
VALUES(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
	(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
	(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO Salespersons (name, store)
VALUES('Petey Cruiser', 'Madrid'),
	('Anna Sthesia', 'Barcelona'),
	('Paul Molive', 'Berlin'),
	('Gail Forcewind', 'Paris'),
	('Paige Turner', 'Mimia'),
	('Bob Frapples', 'Mexico City'),
	('Walter Melon', 'Amsterdam'),
	('Shonda Leer', 'São Paulo');

SELECT
    CONSTRAINT_NAME,
    TABLE_NAME,
    COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    REFERENCED_TABLE_NAME = 'invoices'
    AND REFERENCED_COLUMN_NAME = 'customer_id';
    
ALTER TABLE Invoices DROP FOREIGN KEY invoices_ibfk_2;

INSERT INTO Invoices (id, invoice_number, date, car_vin, customer_id, salesperson_id)
VALUES
(1, 852399038, '2018-08-22', 'VIN00001', 1, 3),
(2, 731166526, '2018-12-31', 'VIN00003', 3, 5),
(3, 271135104, '2019-01-22', 'VIN00002', 2, 7);

select * from invoices;