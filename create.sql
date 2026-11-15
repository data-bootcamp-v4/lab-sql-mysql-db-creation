-- Lab | MySQL Database Creation
-- Challenge 2: creación de la base de datos y de las tablas

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- invoices depende de las otras tres tablas, así que se borra primero
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Coches del inventario.
-- El VIN no lleva UNIQUE porque los datos de ejemplo traen un VIN repetido
-- (ids 5 y 6); se añade un índice normal para poder buscar por él.
CREATE TABLE cars (
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    vin          CHAR(17)     NOT NULL,
    manufacturer VARCHAR(50)  NOT NULL,
    model        VARCHAR(50)  NOT NULL,
    year         YEAR         NOT NULL,
    color        VARCHAR(30)  NULL,
    PRIMARY KEY (id),
    INDEX idx_cars_vin (vin)
);

-- Clientes. cust_id es el código de negocio, distinto del id autoincremental.
CREATE TABLE customers (
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cust_id      INT UNSIGNED NOT NULL,
    cust_name    VARCHAR(100) NOT NULL,
    cust_phone   VARCHAR(25)  NOT NULL,
    cust_email   VARCHAR(100) NULL,
    cust_address VARCHAR(150) NULL,
    cust_city    VARCHAR(60)  NULL,
    cust_state   VARCHAR(60)  NULL,
    cust_country VARCHAR(60)  NULL,
    cust_zipcode VARCHAR(12)  NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uq_customers_cust_id (cust_id)
);

-- Comerciales. staff_id se guarda como texto para conservar los ceros a la izquierda.
CREATE TABLE salespersons (
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    staff_id CHAR(5)      NOT NULL,
    name     VARCHAR(100) NOT NULL,
    store    VARCHAR(60)  NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uq_salespersons_staff_id (staff_id)
);

-- Facturas: cada una une un coche, un cliente y un comercial (relaciones 1:N).
CREATE TABLE invoices (
    id             INT UNSIGNED NOT NULL AUTO_INCREMENT,
    invoice_number INT UNSIGNED NOT NULL,
    date           DATE         NOT NULL,
    car            INT UNSIGNED NOT NULL,
    customer       INT UNSIGNED NOT NULL,
    salesperson    INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uq_invoices_number (invoice_number),
    CONSTRAINT fk_invoices_car
        FOREIGN KEY (car) REFERENCES cars (id),
    CONSTRAINT fk_invoices_customer
        FOREIGN KEY (customer) REFERENCES customers (id),
    CONSTRAINT fk_invoices_salesperson
        FOREIGN KEY (salesperson) REFERENCES salespersons (id)
);
