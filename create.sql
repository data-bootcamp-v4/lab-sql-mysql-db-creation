CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name TEXT NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email TEXT NOT NULL,
    cust_address TEXT NOT NULL,
    cust_city TEXT NOT NULL,
    cust_state TEXT NOT NULL,
    cust_country TEXT NOT NULL,
    cust_zipcode CHAR(5) NOT NULL
);

CREATE TABLE cars (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
	vin TEXT NOT NULL,
	manufacturer TEXT NOT NULL,
	model TEXT NOT NULL,
    year CHAR(4) NOT NULL,
	color TEXT NOT NULL
);

CREATE TABLE salespersons (
    salesperson_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    salesperson_name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

CREATE TABLE invoices (
    invoices_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id BIGINT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id), 
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

INSERT INTO cars (car_id, vin, manufacturer, model, year, color)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray'
);

INSERT INTO customers (customer_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
(1, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008'
);

INSERT INTO salespersons (salesperson_id, salesperson_name, store)
VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo'
);

INSERT INTO invoices (invoices_id, date, car_id, customer_id, salesperson_id)
VALUES
('852399038', '2018-08-22', 1, 1, 3),
('731166526', '2018-12-31', 3, 3, 5),
('271135104', '2019-01-22', 2, 2, 7
);

SELECT * FROM customers;
SELECT * FROM cars;
SELECT * FROM salespersons;
SELECT * FROM invoices;


