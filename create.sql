CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- CARS

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (vehicle_identification_number VARCHAR(50) PRIMARY KEY,
				   manufacturer VARCHAR(50),
                   model VARCHAR(50),
                   model_year YEAR NOT NULL,
                   color VARCHAR(50));

SELECT * FROM cars; 
INSERT INTO cars (vehicle_identification_number,
				   manufacturer,
                   model,
                   model_year,
                   color)
values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
	   ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Grey'),
       ('DAM41UDN3CHU2WVF5', 'Volvo', 'V60 Cross Country', 2019, 'Grey');
ALTER TABLE cars DROP PRIMARY KEY;
ALTER TABLE cars ADD COLUMN id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cars MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT FIRST;


-- CUSTOMERS

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(customer_id INT AUTO_INCREMENT PRIMARY KEY,
					   name VARCHAR(50),
                       phone_number VARCHAR(20),
                       email VARCHAR(40),
                       address VARCHAR(50),
                       city VARCHAR (20),
                       state_or_province VARCHAR (30)
);
ALTER TABLE customers
ADD COLUMN (country VARCHAR (30), zip_or_postal_code VARCHAR(20)); 

ALTER TABLE customers Modify COLUMN zip_or_postal_code INT;
ALTER TABLE customers DROP PRIMARY KEY;
ALTER TABLE customers ADD COLUMN id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE customers MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT FIRST;
SELECT * FROM customers;

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state_or_province, country, zip_or_postal_code)
VALUES (1001, 'Pablo Picasso', '+34 636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
	   (2001, 'Abraham Lincon', '+13 059077086', '-', '120 SW 8th st', 'Miami', 'Florida', 'United States', 33130),
       (3001, 'Napoleon Bonaparte', '+33 179754000', '-', '40 Rue du Colisee', 'Paris', 'Ile-de-France', 'France', 75008); 

-- SALESPERSONS

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
					   staff_id INT,
                       name VARCHAR(30),
                       store VARCHAR(20)
                       );
ALTER TABLE salespersons MODIFY COLUMN staff_id VARCHAR(20);
INSERT INTO salespersons (staff_id, name, store)
VALUES (001, 'Petey Cruiser', 'Madrid'),
		(002, 'Anna Sthesia', 'Barcelona'),
        (003, 'Paula Molive', 'Berlin'),
        (004, 'Gail Forcewind', 'Paris'),
        (005, 'Paige Turner', 'Mimia'),
        (006, 'Bob Frapples', 'Mexico City'),
        (007, 'Walter Melon', 'Amsterdam'),
        (008, 'Shonda Leer', 'Sao Paulo');            
SELECT * FROM salespersons;

-- INVOICES

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
invoice_number VARCHAR (20),
invoice_date date,
car INT UNSIGNED,
customer INT UNSIGNED,
salesperson INT UNSIGNED,
CONSTRAINT fk_cars_customers_salespersons_ivoices
FOREIGN KEY (car) REFERENCES cars (id),
FOREIGN KEY (customer) REFERENCES customers (id),
FOREIGN KEY (salesperson) REFERENCES salespersons (id)
ON DELETE RESTRICT
ON UPDATE CASCADE
); 
-- ALTER TABLE invoices MODIFY COLUMN invoice_date date ('%d-%m-%Y'); 
INSERT INTO invoices (invoice_number, invoice_date, car, customer, salesperson)
VALUES (852399038, STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 1, 1, 3),
		(731166526, STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 3, 3, 5),
        (271135104, STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 2, 2, 7);
SELECT * FROM invoices;




				   