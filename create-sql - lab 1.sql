# challenge 1

# Cars ( id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, vin VARCHAR(50) NOT NULL UNIQUE, manufacturer VARCHAR(50) NOT NULL, model VARCHAR(50) NOT NULL, year INT NOT NULL, color VARCHAR(20) );
# Customers ( id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, cust_id VARCHAR(17) NOT NULL UNIQUE, cust_name VARCHAR(50) NOT NULL, cust_phone VARCHAR(30), cust_email VARCHAR(70), cust_address VARCHAR(70), cust_city VARCHAR(50), cust_state VARCHAR(50), cust_country VARCHAR(50) );
# Salespersons ( id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, staff_id VARCHAR(5) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL, store VARCHAR(50) NOT NULL );
# Invoices ( invoice_number VARCHAR(50) NOT NULL PRIMARY KEY, date DATE NOT NULL, car_id INT NOT NULL, customer_id INT NOT NULL, salesperson_id INT NOT NULL, FOREIGN KEY (car_id) REFERENCES Cars(id), FOREIGN KEY (customer_id) REFERENCES Customers(id), FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id) );


# challenge 2

CREATE DATABASE IF NOT EXISTS lab_mysql;
use lab_mysql;
CREATE TABLE Cars ( id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, vin VARCHAR(50) NOT NULL UNIQUE, manufacturer VARCHAR(50) NOT NULL, model VARCHAR(50) NOT NULL, year INT NOT NULL, color VARCHAR(20) );
CREATE TABLE Customers1 ( id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, cust_id VARCHAR(17) NOT NULL UNIQUE, cust_name VARCHAR(50) NOT NULL, cust_phone VARCHAR(30), cust_email VARCHAR(70), cust_address VARCHAR(70), cust_city VARCHAR(50), cust_state VARCHAR(50), cust_country VARCHAR(50), cust_zipcode VARCHAR(50));
CREATE TABLE Salespersons ( id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, staff_id VARCHAR(5) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL, store VARCHAR(50) NOT NULL );
CREATE TABLE Invoices ( invoice_number VARCHAR(50) NOT NULL PRIMARY KEY, date DATE NOT NULL, car_id INT NOT NULL, customer_id INT NOT NULL, salesperson_id INT NOT NULL, FOREIGN KEY (car_id) REFERENCES Cars(id), FOREIGN KEY (customer_id) REFERENCES Customers(id), FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id) );

ALTER TABLE  Invoices CHANGE COLUMN customer_id  Customers1 INT NOT NULL;


# challenge 3
use lab_mysql;
INSERT INTO Cars (vin, manufacturer, model, year, color) VALUES
('3K096J88581DH5NUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZMB678ELIOZ97TH46V', 'Peugeot', 'Ritter', 2019, 'Red'),
('RKXVNNIHLVYZOUIB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKDNDG5TCU31E9827JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN8CHUZVVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN8CHUZVVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');



INSERT INTO Customers1 (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(10001, 'Pablo Picasso', '+34 696 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', NULL, 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île de France', 'France', 75008);


INSERT INTO Salespersons (staff_id, name, store) VALUES
(00001, 'Potey Cocher', 'Madrid'),
(00002, 'Anna Sheria', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

select * from Invoices;

INSERT INTO Invoices (invoice_number, date, car_id, customer1, salesperson_id) VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 5, 5),
(2711135104, '2019-01-22', 2, 2, 7);
