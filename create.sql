USE car_dealership;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
id INT auto_increment PRIMARY KEY,
vin VARCHAR(50) NOT NULL,
manufacturer VARCHAR(50),
model VARCHAR(50),
year INT,
color VARCHAR(30)
);

CREATE TABLE customers (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT UNIQUE,
name VARCHAR(100),
phone VARCHAR(30),
email VARCHAR(100),
address VARCHAR(100),
city VARCHAR(100),
state VARCHAR(100),
country VARCHAR(100),
zipcode VARCHAR(100)
);

CREATE TABLE salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id INT NOT NULL,
name VARCHAR(50) NOT NULL,
store VARCHAR(50) NOT NULL
); 

CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number INT NOT NULL,
invoice_date DATE NOT NULL,
car_id INT NOT NULL,
customer_id INT NOT NULL,
salesperson_id INT NOT NULL,

FOREIGN KEY (car_id)
	REFERENCES cars(id),
    
FOREIGN KEY (customer_id)
	REFERENCES customers(id),
    
FOREIGN KEY (salesperson_id)
	REFERENCES salespersons(id)
);

DESCRIBE invoices;


