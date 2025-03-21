use lab1_mysql;

-- Insert data into the `customers` table
INSERT INTO customers (customer_id, first_name, last_name, phone_number, email, address, city, state, country, zip_postal)
VALUES 
(10001, 'Pablo', 'Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham', 'Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon', 'Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


-- Insert data into the `employees` table
INSERT INTO employees (employee_id, first_name, last_name, position)
VALUES 
(1, 'Petey', 'Cruiser', 'Madrid'),
(2, 'Anna', 'Sthesia', 'Barcelona'),
(3, 'Paul', 'Molive', 'Berlin'),
(4, 'Gail', 'Forcewind', 'Paris'),
(5, 'Paige', 'Turner', 'Miami'),
(6, 'Bob', 'Frapples', 'Mexico City'),
(7, 'Walter', 'Melon', 'Amsterdam'),
(8, 'Shonda', 'Leer', 'São Paulo');

-- Insert data into the `invoices` table
INSERT INTO invoices (invoice_id, invoice_number, sales_date, car, customer, sales_person)
VALUES 
(1, 852399038, '2018-08-22', 1, 1, 3),
(2, 731166526, '2018-12-31', 3, 3, 5),
(3, 271135104, '2019-01-22', 2, 2, 7);

SHOW COLUMNS FROM cars;
SHOW CREATE TABLE cars;
ALTER TABLE cars
DROP COLUMN manufacturer;
-- Insert data into the `cars` table
INSERT INTO cars (car_id, vin, make, model, year, color)
VALUES 
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- bonus challenge
SET SQL_SAFE_UPDATES = 0;

-- Update email for Pablo Picasso
UPDATE customers 
SET email = 'ppicasso@gmail.com'
WHERE first_name = 'Pablo' AND last_name = 'Picasso';

-- Update email for Abraham Lincoln
UPDATE customers 
SET email = 'lincoln@us.gov'
WHERE first_name = 'Abraham' AND last_name = 'Lincoln';

-- Update email for Napoléon Bonaparte
UPDATE customers 
SET email = 'hello@napoleon.me'
WHERE first_name = 'Napoléon' AND last_name = 'Bonaparte';

SET SQL_SAFE_UPDATES = 1;


