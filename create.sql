
CREATE SCHEMA lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
	id_car INT AUTO_INCREMENT,
	VIN VARCHAR(100),
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color ENUM('negro', 'blanco', 'gris', 'rojo'),
    PRIMARY KEY (id_car)
);

CREATE TABLE customers (
	id_num INT AUTO_INCREMENT,
	id_customer INT NOT NULL,
    name VARCHAR(100),
    phone INT,
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    province VARCHAR(100),
    country VARCHAR(100),
    zip VARCHAR(100),
    PRIMARY KEY (id_num)
);

CREATE TABLE salespersons (
	id_salespersons INT AUTO_INCREMENT,
	id_staff INT NOT NULL,
    name VARCHAR(100),
    store VARCHAR(100),
    PRIMARY KEY (id_salespersons)
);

CREATE TABLE invoices (
	id_invoice INT AUTO_INCREMENT,
	invoice_number INT NOT NULL,
    date DATETIME,
    car INT,
    customer INT,
    salesperson INT,
	PRIMARY KEY (id_invoice),
    FOREIGN KEY (car) REFERENCES cars (id_car),
    FOREIGN KEY(customer) REFERENCES customers (id_num),
    FOREIGN KEY (salesperson) REFERENCES salespersons (id_salespersonS)
);

ALTER TABLE customers
MODIFY COLUMN phone VARCHAR(100);