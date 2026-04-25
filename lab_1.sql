CREATE DATABASE IF NOT EXISTS car_sales;

USE car_sales;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
car_id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(50) NOT NULL,
manufacturer VARCHAR(50) NOT NULL,
model VARCHAR(50) Not NULL,
year INT Not NULL,
color VARCHAR(50)
);

CREATE TABLE customers (
ID INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL UNIQUE,
	cust_name VARCHAR(50) NOT NULL,
	cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
    );
    
CREATE TABLE salesperson (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(50)
);

CREATE TABLE invoices (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL UNIQUE,
    invoice_date DATE not NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    
    #ADD FOREIGN KEY
    FOREIGN KEY(car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(id)
);

INSERT INTO cars ( car_id, vin, manufacturer, model, year, color)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (
id, customer_id, cust_name, cust_phone, cust_email,
    cust_address, cust_city, cust_state, cust_country, cust_zipcode
)
VALUES
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL,
 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),

(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL,
 '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),

(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL,
 '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
 
 
INSERT INTO salesperson (id, staff_id, name, store)
VALUES
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (
id, invoice_number, invoice_date, car_id, customer_id, salesperson_id
)
VALUES
(1, 852399038, '2018-08-22', 1, 1, 3),
(2, 731166526, '2018-12-31', 3, 3, 5),
(3, 271135104, '2019-01-22', 2, 2, 7);

SELECT * FROM customers;

# Update Tables

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'pablo Picasso';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
where cust_name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

#DELETE duplicates
SET SQL_SAFE_UPDATES =0;

DELETE FROM cars
WHERE car_id = 4;

SET SQL_SAFE_UPDATEs = 1;

SELECT * from cars;
