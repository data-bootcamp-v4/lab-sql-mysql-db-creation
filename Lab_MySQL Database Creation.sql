CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars(
car_id INT UNIQUE,
VIN VARCHAR(17) PRIMARY KEY,
manufacturer VARCHAR(128),
model VARCHAR(24) NOT NULL,
make_year INT NOT NULL,
color VARCHAR(15) NOT NULL,
transmission_type VARCHAR(24),
car_type VARCHAR(24)
);

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(32) NOT NULL,     
customer_phone_number VARCHAR(15),
customer_email VARCHAR(32) NOT NULL,
customer_address VARCHAR(128),
customer_city VARCHAR(32) NOT NULL,
customer_state VARCHAR(32) NOT NULL,
customer_province VARCHAR(32) NOT NULL,
customer_country VARCHAR(32) NOT NULL,
customer_postal_zip_code VARCHAR(32)
);

DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons(
salesperson_id INT PRIMARY KEY,
staff_id INT UNIQUE,
staff_name VARCHAR(32) NOT NULL,
store VARCHAR(32)
);

DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices(
invoice_id INT PRIMARY KEY,
invoice_number INT UNIQUE,
invoice_date INT NOT NULL,
car VARCHAR(24) NOT NULL,
customer_id INT UNIQUE,
saleperson_id INT UNIQUE
);

SELECT * FROM lab_mysql.Cars;
SELECT * FROM lab_mysql.Customers;
SELECT * FROM lab_mysql.Salespersons;
SELECT * FROM lab_mysql.Invoices;

INSERT INTO lab_mysql.cars(
car_id,VIN,manufacturer,model,make_year,color,transmission_type,car_type) values(
1,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue', 'Manual', 'Sedan'),(
2,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter', 2019, 'Red', 'Automatic', 'Coupe'),(
3,'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 'Semi-automatic', 'SUV'),(
4,'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAW4', 2018, 'Silver', 'Automatic', 'SUV'),(
5,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 'Manual', 'Hatchback'),(
6,'DAM41UDN3CHU2WVF4', 'Mazda', '3Sport', 2020, 'Blue', 'Automatic', 'Sportscar');

INSERT INTO lab_mysql.customers(
customer_id, customer_name, customer_phone_number , customer_email, customer_address, customer_city, customer_state, customer_province, customer_country, customer_postal_zip_code)
values(
10001, 'Pablo Picasso', '+34636176382', '', 'Paseo de la Chopera 14', 'Madrid', 'Madrid','Madrid', 'Spain', 28045),(
20001, 'Abraham Lincoln', '+13059077086','', '120 SW 8th St', 'Miami', 'Florida','Florida', 'US', 33130),(
30001,'Napoléon Bonaparte', '+33179754000', '', '40 Rue du Colisée', 'Paris', 'Île-de-France','Île-de-France', 'France', 75008);

INSERT INTO lab_mysql.salespersons(
salesperson_id, staff_id, staff_name, store) values(
 1,	00001, 'Petey Cruiser', 'Madrid'),(
 2,	00002, 'Anna Sthesia', 'Barcelona'),(
 3,	00003, 'Paul Molive', 'Berlin'),(
 4,	00004, 'Gail Forcewind', 'Paris'),(
 5,	00005, 'Paige Turner', 'Mimia'),(
 6,	00006, 'Bob Frapples', 'Mexico City'),(
 7,	00007, 'Walter Melon', 'Amsterdam'),(
 8,	00008, 'Shonda Leer', 'São Paulo');
 
INSERT INTO lab_mysql.Invoices(
 invoice_id,invoice_number,invoice_date,car,customer_id,saleperson_id) values(
 1,	852399038,	'22-08-2018',	1,	1,	3),(
 2,	731166526,	'31-12-2018',	3,	3,	5),(
 3,	271135104,	'22-01-2019',	5,	2,	7);

-- Error Code: 1265. Data truncated for column 'invoice_date' at row 1

ALTER TABLE Invoices MODIFY COLUMN invoice_date DATE NOT NULL;
 
 
INSERT INTO lab_mysql.Invoices(
 invoice_id,invoice_number,invoice_date,car,customer_id,saleperson_id) values(
 1,	852399038,	'2018-08-22',	1,	1,	3),(
 2,	731166526,	'2018-12-31',	3,	3,	5),(
 3,	271135104,	'2019-01-22',	5,	2,	7);


SELECT * FROM lab_mysql.Cars;
SELECT * FROM lab_mysql.Customers;
SELECT * FROM lab_mysql.Salespersons;
SELECT * FROM lab_mysql.Invoices;

UPDATE lab_mysql.customers
SET customer_email = 'ppicasso@gmail.com'
WHERE customer_id= 10001;

UPDATE lab_mysql.customers
SET customer_email ='lincoln@us.gov'
WHERE customer_id= 20001;

UPDATE lab_mysql.customers
SET customer_email = 'hello@napoleon.me'
WHERE customer_id= 30001;

SELECT * FROM lab_mysql.Customers;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars 
WHERE car_id = 4;

SELECT * FROM lab_mysql.Cars;


