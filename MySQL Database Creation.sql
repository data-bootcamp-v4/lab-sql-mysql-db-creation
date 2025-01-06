CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (id INT PRIMARY KEY AUTO_INCREMENT,
VIN VARCHAR(17),
manufacturer VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
year YEAR,
color VARCHAR(50) NOT NULL);

DROP TABLE IF EXISTS customer;
CREATE TABLE customer ( id INT PRIMARY KEY AUTO_INCREMENT, 
customer_id INT,
email VARCHAR(50) NOT NULL, 
address VARCHAR(50),
city VARCHAR(50) NOT NULL,
state_province  VARCHAR(50) NOT NULL,
country VARCHAR(50) NOT NULL,
zip_postal INT NOT NULL);


DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (id INT PRIMARY KEY AUTO_INCREMENT,
staff_id VARCHAR(50),
name VARCHAR(50) NOT NULL,
store VARCHAR(50) NOT NULL);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(id INT PRIMARY KEY AUTO_INCREMENT,
invoice_number INT,
date DATE NOT NULL, 
car VARCHAR(50) NOT NULL,
customer VARCHAR(50),
sales_person VARCHAR(50) NOT NULL);



INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter', 2019,'Red');

SELECT * FROM CUSTOMER;
INSERT INTO customer (id, customer_id, email, address, city, state_province, country,zip_postal)
VALUES ('0', '10001', 'pepe@gmail.com', 'c/ caza,2', 'Madrid', 'Madrid', 'Spain', '28029');
SELECT * FROM CUSTOMER;

SELECT * FROM salespersons;
INSERT INTO salespersons (id, staff_id, name, store)
VALUES  ('0', '01','PEPE', 'Madrid')
SELECT * FROM salespersons;

