CREATE DATABASE IF NOT EXISTS Lab1;
USE Lab1;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
id INT AUTO_INCREMENT NOT NULL,
vin VARCHAR(255) NOT NULL,
manufacturer VARCHAR(255) NOT NULL,
 model VARCHAR(255) NOT NULL,
 `year`INT NOT NULL,
 color VARCHAR(255) NOT NULL,
 PRIMARY KEY (id)
);
DROP TABLE IF EXISTS customers;


CREATE TABLE customers (
customer_id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(255) NOT NULL,
phone_number VARCHAR(255) NOT NULL,
email VARCHAR (255) NOT NULL,
address VARCHAR(255) NOT NULL,
city VARCHAR(255) NOT NULL,
state_province VARCHAR(255) NOT NULL,
country VARCHAR(255) NOT NULL,
zip_code VARCHAR(255) NOT NULL,

PRIMARY KEY (id,customer_id)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(
staff_id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(255) NOT NULL,
store VARCHAR(255) NOT NULL,

PRIMARY KEY (id,staff_id)
);


DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_number VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    
    salesperson_id INT NOT NULL,
    PRIMARY KEY (invoice_number),
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id)
);

DESCRIBE customer_id;



    





