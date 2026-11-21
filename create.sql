-- =====================================================
-- LAB | MySQL Database Creation  -  create.sql
-- Concesionario de coches: cars, customers, salespersons, invoices
-- =====================================================
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Se borran en orden inverso a las dependencias (invoices depende de las otras 3)
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Coches del inventario
CREATE TABLE cars (
    id            INT AUTO_INCREMENT PRIMARY KEY,   -- id interno
    vin           VARCHAR(17) NOT NULL,             -- número de bastidor (17 caracteres)
    manufacturer  VARCHAR(50) NOT NULL,
    model         VARCHAR(50) NOT NULL,
    year          YEAR        NOT NULL,
    color         VARCHAR(30)
);

-- Clientes
CREATE TABLE customers (
    id            INT AUTO_INCREMENT PRIMARY KEY,   -- id interno
    cust_id       INT          NOT NULL UNIQUE,     -- id de cliente de la empresa
    cust_name     VARCHAR(100) NOT NULL,
    cust_phone    VARCHAR(25),
    cust_email    VARCHAR(100),
    cust_address  VARCHAR(150),
    cust_city     VARCHAR(50),
    cust_state    VARCHAR(50),
    cust_country  VARCHAR(50),
    cust_zipcode  VARCHAR(10)                       -- texto: hay códigos con ceros y letras
);

-- Vendedores
CREATE TABLE salespersons (
    id        INT AUTO_INCREMENT PRIMARY KEY,
    staff_id  VARCHAR(5)   NOT NULL UNIQUE,         -- texto para conservar los ceros (00001)
    name      VARCHAR(100) NOT NULL,
    store     VARCHAR(50)  NOT NULL
);

-- Facturas: cada una une 1 coche, 1 cliente y 1 vendedor (relaciones 1 a muchos)
CREATE TABLE invoices (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number  VARCHAR(20) NOT NULL UNIQUE,
    date            DATE        NOT NULL,
    car_id          INT NOT NULL,
    customer_id     INT NOT NULL,
    salesperson_id  INT NOT NULL,
    FOREIGN KEY (car_id)         REFERENCES cars(id)         ON DELETE CASCADE,
    FOREIGN KEY (customer_id)    REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
