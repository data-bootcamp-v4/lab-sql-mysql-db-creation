CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(25) NOT NULL,
    cust_email VARCHAR(100) NULL,
    cust_address VARCHAR(150) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(15) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL UNIQUE,
    sale_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    CONSTRAINT fk_invoices_car
        FOREIGN KEY (car_id) REFERENCES cars(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_invoices_customer
        FOREIGN KEY (customer_id) REFERENCES customers(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_invoices_salesperson
        FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

INSERT INTO cars (id, vin, manufacturer, model, year, color)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (
    id, cust_id, cust_name, cust_phone, cust_email,
    cust_address, cust_city, cust_state, cust_country, cust_zipcode
)
VALUES
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES
(1, 1, 'Petey Cruiser', 'Madrid'),
(2, 2, 'Anna Sthesia', 'Barcelona'),
(3, 3, 'Paul Molive', 'Berlin'),
(4, 4, 'Gail Forcewind', 'Paris'),
(5, 5, 'Paige Turner', 'Mimia'),
(6, 6, 'Bob Frapples', 'Mexico City'),
(7, 7, 'Walter Melon', 'Amsterdam'),
(8, 8, 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (id, invoice_number, sale_date, car_id, customer_id, salesperson_id)
VALUES
(1, 852399038, '2018-08-22', 1, 1, 3),
(2, 731166526, '2018-12-31', 3, 3, 5),
(3, 271135104, '2019-01-22', 2, 2, 7);

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

DELETE FROM cars
WHERE id = 4;