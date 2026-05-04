CREATE DATABASE IF NOT EXISTS database_lab1;
USE database_lab1;

	DROP TABLE IF EXISTS cars;
	CREATE TABLE cars (
model_id INT AUTO_INCREMENT,
car_model VARCHAR(50) DEFAULT NULL,
manufacturer_name VARCHAR(50),
colour ENUM('black', 'white', 'red') DEFAULT 'black',
price FLOAT,
stock INT,
year_model INT,
PRIMARY KEY (model_id),
CONSTRAINT check_price CHECK (price >0)
);

-- Crear la tabla clients 

CREATE TABLE IF NOT EXISTS customers (
customer_id INT NOT NULL,
customer_name VARCHAR(50),
client_firt_name VARCHAR (50),
email VARCHAR (150),
address VARCHAR (150),
city VARCHAR(30) DEFAULT 'Madrid',
state_province  VARCHAR(150) DEFAULT 'c.Madrid',
zip_postal_code INT NOT NULL,

PRIMARY KEY (client_id)

); 

CREATE TABLE IF NOT EXISTS sales_persons (
staff_id INT NOT NULL,
staff_name VARCHAR(50), 
staff_first_name VARCHAR(50),
store_id VARCHAR(50),
PRIMARY KEY (staff_id)
);

CREATE TABLE IF NOT EXISTS invoices (
invoice_number INT NOT NULL,
date DATETIME,
customer_id INT NOT NULL,
car_model VARCHAR(50),
Invoice_value FLOAT,
saler_id INT NOT NULL,
PRIMARY KEY (invoice_number), 
FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE,
FOREIGN KEY (car_model) REFERENCES customers (customer_model) ON DELETE CASCADE,

CONSTRAINT check_value CHECK (order_value > 0)
);
