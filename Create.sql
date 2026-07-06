CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin CHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(100) NOT NULL,
    car_year SMALLINT NOT NULL,
    color VARCHAR(30) NOT NULL
);


CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30) NOT NULL,
    cust_email VARCHAR(255),
    cust_address VARCHAR(255) NOT NULL,
    cust_city VARCHAR(100) NOT NULL,
    cust_state VARCHAR(100) NOT NULL,
    cust_country VARCHAR(100) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL
);


CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id CHAR(5) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);


CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,

    UNIQUE (car_id),

    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id));
    
    INSERT INTO customers (
    cust_id,
    cust_name,
    cust_phone,
    cust_email,
    cust_address,
    cust_city,
    cust_state,
    cust_country,
    cust_zipcode
)
VALUES
    (
        10001,
        'Pablo Picasso',
        '+34 636 17 63 82',
        NULL,
        'Paseo de la Chopera, 14',
        'Madrid',
        'Madrid',
        'Spain',
        '28045'
    ),
    (
        20001,
        'Abraham Lincoln',
        '+1 305 907 7086',
        NULL,
        '120 SW 8th St',
        'Miami',
        'Florida',
        'United States',
        '33130'
    ),
    (
        30001,
        'Napoléon Bonaparte',
        '+33 1 79 75 40 00',
        NULL,
        '40 Rue du Colisée',
        'Paris',
        'Île-de-France',
        'France',
        '75008'
    );
    SELECT * FROM customers;
    
    INSERT INTO salespersons (
    staff_id,
    name,
    store
)
VALUES
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind', 'Paris'),
    ('00005', 'Paige Turner', 'Mimia'),
    ('00006', 'Bob Frapples', 'Mexico City'),
    ('00007', 'Walter Melon', 'Amsterdam'),
    ('00008', 'Shonda Leer', 'São Paulo');
    
    SELECT * FROM salespersons;
    
    INSERT INTO invoices (
    invoice_number,
    invoice_date,
    car_id,
    customer_id,
    salesperson_id
)
VALUES
    ('852399038', '2018-08-22', 1, 1, 3),
    ('731166526', '2018-12-31', 3, 3, 5),
    ('271135104', '2019-01-22', 2, 2, 7);
    
    SELECT * FROM invoices;
    
    