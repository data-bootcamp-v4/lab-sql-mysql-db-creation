CREATE TABLE vehicles (
    vehicleID INT PRIMARY KEY,
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(50)
);
-- Customers
CREATE TABLE customers (
    customerID INT PRIMARY KEY,
    name VARCHAR(100),
    phoneNumber VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_postal VARCHAR(20)
);
-- Salespersons
CREATE TABLE salespersons (
    staffID INT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceNumber INT PRIMARY KEY,
    date DATE,
    car INT,
    customer INT,
    salesperson INT

   
);

INSERT INTO customers (customerId, customer_name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');

INSERT INTO vehicles (vehicleID, manufacturer, model, year, color)
VALUES
('3K096J8581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZMBG7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKVXNNIHLVZ0UB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Error Code: 1265. Data truncated for column 'vehicleID' at row 1

ALTER TABLE vehicles 
MODIFY vehicleID VARCHAR(20);

INSERT INTO vehicles (vehicleID, manufacturer, model, year, color)
VALUES
('3K096J8581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZMBG7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKVXNNIHLVZ0UB4M', 'Ford', 'Fusion', 2018, 'White');

SELECT * FROM vehicles;
DELETE FROM vehicles WHERE vehicleID = '3K096J8581DHSNUP';
-- DELETED THE DUPLICATED

-- CUSTOMERS
INSERT INTO customers (
    customerId, name,   phoneNumber, email,
    address, city,state_province, country,   zip_postal
)
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', NULL,
     'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),

    (20001, 'Abraham Lincoln', '+1 305 907 7086', NULL,
     '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),

    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL,
     '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');



-- Error Code: 1146. Table 'seeding.salespersons' doesn't exist
-- Salespersons

USE seeding;
INSERT INTO salespersons ( staffId, name, store)
VALUES
    ( '00001', 'Petey Cruiser', 'Madrid'),
    ( '00002', 'Anna Sthesia', 'Barcelona'),
    ( '00003', 'Paul Molive', 'Berlin'),
    ( '00004', 'Gail Forcewind', 'Paris'),
    ( '00005', 'Paige Turner', 'Mimia'),
    ( '00006', 'Bob Frapples', 'Mexico City'),
    ( '00007', 'Walter Melon', 'Amsterdam'),
    ( '00008', 'Shonda Leer', 'São Paulo');


