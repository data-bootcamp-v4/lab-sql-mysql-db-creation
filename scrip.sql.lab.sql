CREATE DATABASE IF NOT EXISTS car_dealership;
USE car_dealership;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    vin VARCHAR(20) NOT NULL UNIQUE, 
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(20)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100),
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
    staff_id INT NOT NULL UNIQUE,
    name VARCHAR(100),
    store VARCHAR(50)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    invoice_number INT NOT NULL UNIQUE,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS cars;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', 'lincoln@us.gov', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');

INSERT INTO salespersons (staff_id, name, store) VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona');
USE car_dealership;
SHOW TABLES; 
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    vin VARCHAR(20) NOT NULL UNIQUE, 
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(20)
);
SET FOREIGN_KEY_CHECKS = 0; /* Disable Temporarily */
/* Your table creation code */
SET FOREIGN_KEY_CHECKS = 1; /* Re-enable */