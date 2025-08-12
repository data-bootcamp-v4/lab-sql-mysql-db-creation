DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    vin VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

CREATE TABLE customers (
    id INT PRIMARY KEY,
    cust_id INT,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

CREATE TABLE salespersons (
    id INT PRIMARY KEY,
    staff_id VARCHAR(10),
    name VARCHAR(100),
    store VARCHAR(50)
);

CREATE TABLE invoices (
    id INT PRIMARY KEY,
    invoice_number VARCHAR(20),
    date DATE,
    car VARCHAR(17),
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(vin),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);

INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNAQ', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (id, staff_id, name, store) VALUES
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Miami'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (id, invoice_number, date, car, customer, salesperson) VALUES
(1, '852399038', '2018-08-22', '3K096I98581DHSNAQ', 1, 3),
(2, '731166526', '2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5),
(3, '271135104', '2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7);