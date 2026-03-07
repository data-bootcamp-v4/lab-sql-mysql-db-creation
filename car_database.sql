CREATE SCHEMA car_database;

-- Challenge 1: ER diagram, we can see that on reverse engineer

USE car_database;

CREATE TABLE IF NOT EXISTS cars (
	VIN INT,
    manufacturer VARCHAR(50),
    car_model VARCHAR(20),
    year INT,
    colour ENUM('black', 'white', 'red', 'blue')
);

CREATE TABLE IF NOT EXISTS customers (
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    phone_num INT,
    email VARCHAR(20),
    address VARCHAR(50),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    zip_code CHAR(6)
);

DROP TABLE customers;

CREATE TABLE salespersons (
	staff_id INT NOT NULL, salesperson_name VARCHAR(50), store_name VARCHAR(50) DEFAULT 'Main'
);

CREATE TABLE IF NOT EXISTS invoices (
	invoice_num INT NOT NULL,
    date DATETIME,
    car_model VARCHAR(20) NOT NULL,
    customer_id INT NOT NULL,
    customer_name VARCHAR(50),
    salesperson_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (invoice_num),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id) 
    -- CONSTRAINT 
);

-- Challenge 2: complete. All the tables are created. 




