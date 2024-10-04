CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vin VARCHAR(17) PRIMARY KEY, 
    manufacturer VARCHAR(40), 
    model VARCHAR(40), 
    car_year YEAR, 
    color VARCHAR(40)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    staff_id INT PRIMARY KEY, 
    staff_name VARCHAR(50), 
    store VARCHAR(50)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY, 
    invoice_date DATE, 
    car VARCHAR(17), 
    customer INT, 
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(vin),
    FOREIGN KEY (customer) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(staff_id)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY, 
    customer_name VARCHAR(50), 
    phone_number VARCHAR(50), 
    email VARCHAR(50), 
    address VARCHAR(50), 
    city VARCHAR(50), 
    state VARCHAR(50), 
    country VARCHAR(50), 
    postal_code VARCHAR(10)
);  

INSERT INTO salespersons (staff_id, staff_name, store)
VALUES 
    (1, "Petey Cruiser", "Madrid"),
    (2, "Anna Sthesia", "Barcelona"),
    (3, "Paul Molive", "Berlin"),
    (4, "Gail Forcewind", "Paris"),
    (5, "Paige Turner", "Miami"),
    (6, "Bob Frapples", "Mexico City"),
    (7, "Walter Melon", "Amsterdam"),
    (8, "Shonda Leer", "São Paulo");

INSERT INTO cars (vin, manufacturer, model, car_year, color)
VALUES 
    ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
    ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
    ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
    ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
    ("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers (customer_id, customer_name, phone_number, email, address, city, state, country, postal_code)
VALUES 
    (10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
    (20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
    (30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

INSERT INTO invoices (invoice_number, invoice_date, car, customer, salesperson)
VALUES 
    (852399038, "2018-08-22", "3K096I98581DHSNUP", 10001, 3),
    (731166526, "2018-12-31", "RKXVNNIHLVVZOUB4M", 30001, 5),
    (271135104, "2019-01-22", "ZM8G7BEUQZ97IH46V", 20001, 7);

UPDATE customers SET email = "ppicasso@gmail.com" WHERE customer_id = 10001;
UPDATE customers SET email = "lincoln@us.gov" WHERE customer_id = 20001;
UPDATE customers SET email = "hello@napoleon.me" WHERE customer_id = 30001;
