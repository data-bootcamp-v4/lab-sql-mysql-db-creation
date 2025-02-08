
CREATE DATABASE IF NOT EXISTS seeding_sql;
USE seeding_sql;
-- Drop tables in correct order (to avoid foreign key conflicts)
/** users table**/
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
INSERT INTO users (id, name, email)
VALUES 
  (1, 'John Doe', 'johndoe@example.com'),
  (2, 'Jane Smith', 'janesmith@example.com'),
  (3, 'Bob Johnson', 'bobjohnson@example.com');

/** cars table**/
DROP TABLE  CARS;
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(30) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

--  customers table
DROP TABLE customers;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_code VARCHAR(20) NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zip VARCHAR(20)
);

--  salespersons table
DROP TABLE salespersons;
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_code VARCHAR(20) NOT NULL,
    staff_name VARCHAR(100) NOT NULL,
    store_location VARCHAR(100)
);

/**invoices table**/
DROP TABLE invoices;
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    invoice_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id)        REFERENCES cars(car_id),
    FOREIGN KEY (customer_id)   REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id)REFERENCES salespersons(salesperson_id)
);

SHOW TABLES;

USE seeding_sql;

/** Seed the cars table**/
INSERT INTO cars (car_id, vin, manufacturer, model, year, color)
VALUES
  (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
  (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot',   'Rifter', 2019, 'Red'),
  (3, 'RKXVNNIHLVVZOUB4M', 'Ford',      'Fusion', 2018, 'White'),
  (4, 'HKNDGS7CU31E9Z7JW', 'Toyota',    'RAV4',   2018, 'Silver'),
  (5, 'DAM41UDN3CHU2WVF6', 'Volvo',     'V60',    2019, 'Gray'),
  (6, 'DAM41UDN3CHU2WVF7', 'Volvo',     'V60 Cross Country', 2019, 'Gray');
  
  
/** Seed the customers table**/
INSERT INTO customers (customer_id, cust_code, cust_name, cust_phone, cust_email,
                       cust_address, cust_city, cust_state, cust_country, cust_zip)
VALUES
  (1, '10001', 'Pablo Picasso',       '+34 636 17 63 82', '', 
       'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
  (2, '20001', 'Abraham Lincoln',     '+1 305 907 7086', '', 
       '120 SW 8th St',            'Miami',  'Florida', 'United States', '33130'),
  (3, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '', 
       '40 Rue du Colisée',        'Paris',  'Île-de-France', 'France', '75008');

-- Seed the salespersons table
INSERT INTO salespersons (salesperson_id, staff_code, staff_name, store_location)
VALUES
  (1, '00001', 'Petey Cruiser',     'Madrid'),
  (2, '00002', 'Anna Sthesia',      'Barcelona'),
  (3, '00003', 'Paul Molive',       'Berlin'),
  (4, '00004', 'Gail Forcewind',    'Paris'),
  (5, '00005', 'Paige Turner',      'Mimia'),
  (6, '00006', 'Bob Frapples',      'Mexico City'),
  (7, '00007', 'Walter Melon',      'Amsterdam'),
  (8, '00008', 'Shonda Leer',       'São Paulo');

/**Seed the invoices table**/
INSERT INTO invoices (invoice_id, invoice_number, invoice_date, car_id, customer_id, salesperson_id)
VALUES
  (1, '852399038', '2018-08-22', 1, 1, 3),
  (2, '731166526', '2018-12-31', 3, 3, 5),
  (3, '271135104', '2019-01-22', 2, 2, 7);

SELECT * FROM users;
SELECT * FROM cars;
  SELECT * FROM customers;
  SELECT * FROM salespersons;
  SELECT * FROM invoices;

USE seeding_sql;

/**Pablo Picasso -> ppicasso@gmail.com**/
UPDATE customers
   SET cust_email = 'ppicasso@gmail.com'
 WHERE cust_name = 'Pablo Picasso';

/**Abraham Lincoln -> lincoln@us.gov**/
UPDATE customers
   SET cust_email = 'lincoln@us.gov'
 WHERE cust_name = 'Abraham Lincoln';

/**  Napoléon Bonaparte -> hello@napoleon.me**/
UPDATE customers
   SET cust_email = 'hello@napoleon.me'
 WHERE cust_name = 'Napoléon Bonaparte';

SELECT * FROM customers;
