CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- 1. PRIMERO borramos la tabla que conecta a las demás (La Hija)
DROP TABLE IF EXISTS invoices;

-- 2. AHORA SÍ podemos borrar las tablas independientes (Las Padres) sin errores
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
-- ... Aquí debajo siguen tus CREATE TABLE ...

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(20) NOT NULL
);
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50),
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(10)
);
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY, -- ID Interno (PK)
    staff_id VARCHAR(10) NOT NULL, -- ID de empleado del negocio
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) NOT NULL,
    date DATE NOT NULL,
    
    -- Declaración de las columnas FK
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    
    -- Declaración restricciones FK
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

-- PARTE 1: CARS

INSERT INTO cars (VIN, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'); 
-- Nota: El registro duplicado de Volvo V60 Cross Country ha sido eliminado.

-- seeding.sql - PARTE 2: CUSTOMERS

INSERT INTO customers (cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
('Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- PARTE 3: SALESPERSONS

INSERT INTO salespersons (staff_id, name, store) VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- PARTE 4: INVOICES

INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
('852399038', '2018-08-22', 1, 1, 3), 
('116652631', '2018-12-31', 3, 3, 5), 
('327113510', '2019-01-22', 2, 2, 2);

-- BONUS 
update.sql 

-- En MySQL Workbench, si no usas la PRIMARY KEY en la cláusula WHERE, a veces salta un error de "Safe Update Mode" 
-- porque MySQL te está protegiendo de cambiar miles de filas por accidente. 
-- Para trabajar con el nombre (que no es la PK), debes desactivar ese modo antes:
SET SQL_SAFE_UPDATES = 0;

-- 1. Actualizar email de Pablo Picasso
UPDATE customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

-- 2. Actualizar email de Abraham Lincoln
UPDATE customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

-- 3. Actualizar email de Napoléon Bonaparte
UPDATE customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- Volver a activar el modo de actualización segura
SET SQL_SAFE_UPDATES = 1;


-- Volvemos a aactivar "Safe Update Mode"
SET SQL_SAFE_UPDATES = 1;

-- delete.sql
USE lab_mysql;

-- Desactivar el modo de actualización segura
-- (Puede ser necesario si la FK estuviera en otra columna, pero es buena práctica)
SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars
WHERE car_id = 4;

-- Volver a activar el modo de actualización segura
SET SQL_SAFE_UPDATES = 1;

