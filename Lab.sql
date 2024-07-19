CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(20) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  year INT NOT NULL,
  color VARCHAR(20) NOT NULL
);



DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT NOT NULL,
  cust_name VARCHAR(100) NOT NULL,
  cust_phone VARCHAR(20),
  cust_email VARCHAR(100),
  cust_address VARCHAR(255),
  cust_city VARCHAR(50),
  cust_state VARCHAR(50),
  cust_country VARCHAR(50),
  cust_zipcode VARCHAR(20)
);



DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(50) NOT NULL
);



DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number INT NOT NULL,
  date DATE NOT NULL,
  car INT,
  customer INT,
  salesperson INT,
  FOREIGN KEY (car) REFERENCES cars(id),
  FOREIGN KEY (customer) REFERENCES customers(id),
  FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);



INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');



INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');



INSERT INTO salespersons (staff_id, name, store)
VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Miami'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');



INSERT INTO invoices (invoice_number, date, car, customer, salesperson)
VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 3, 5),
(271135104, '2019-01-22', 2, 2, 7);
