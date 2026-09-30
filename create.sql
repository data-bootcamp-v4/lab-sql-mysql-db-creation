-- =====================================================================
-- create.sql: base de datos y tablas del concesionario
-- Ejecutar primero este archivo y después seeding.sql.
-- =====================================================================

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Orden de borrado: primero la tabla que tiene las claves foráneas (invoices).
-- Si intentara borrar cars antes, MySQL no me dejaría, porque invoices apunta a ella.
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- ---------------------------------------------------------------------
-- cars
-- ---------------------------------------------------------------------
-- vin: el número de bastidor tiene siempre 17 caracteres -> VARCHAR(17).
-- Debería ser UNIQUE, pero los datos de ejemplo traen un VIN repetido que se corrige en
-- el bonus (delete.sql). Por eso la restricción UNIQUE se añade allí, después de limpiar.
-- year: SMALLINT basta para un año (el tipo YEAR de MySQL también valdría).
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    vin          VARCHAR(17)  NOT NULL,
    manufacturer VARCHAR(50)  NOT NULL,
    model        VARCHAR(50)  NOT NULL,
    year         SMALLINT     NOT NULL,
    color        VARCHAR(30)
);

-- ---------------------------------------------------------------------
-- customers
-- ---------------------------------------------------------------------
-- cust_id es el identificador de negocio (10001, 20001...), distinto del id técnico.
-- UNIQUE impide dar de alta dos veces al mismo cliente.
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    cust_id      INT          NOT NULL UNIQUE,
    cust_name    VARCHAR(100) NOT NULL,
    cust_phone   VARCHAR(30),
    cust_email   VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city    VARCHAR(50),
    cust_state   VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- ---------------------------------------------------------------------
-- salespersons
-- ---------------------------------------------------------------------
-- staff_id como VARCHAR para conservar los ceros a la izquierda (00001).
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id       INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10)  NOT NULL UNIQUE,
    name     VARCHAR(100) NOT NULL,
    store    VARCHAR(50)  NOT NULL
);

-- ---------------------------------------------------------------------
-- invoices
-- ---------------------------------------------------------------------
-- Tres claves foráneas (FOREIGN KEY ... REFERENCES): MySQL comprueba que el coche,
-- el cliente y el vendedor existen antes de aceptar una factura.
-- car_id es UNIQUE: un coche solo se puede vender una vez (relación 1:1 coche-factura).
-- Llamo a la columna invoice_date y no date, porque DATE es un tipo de dato de SQL
-- y usarlo como nombre de columna puede dar problemas.
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number BIGINT NOT NULL UNIQUE,
    invoice_date   DATE   NOT NULL,
    car_id         INT    NOT NULL UNIQUE,
    customer_id    INT    NOT NULL,
    salesperson_id INT    NOT NULL,
    FOREIGN KEY (car_id)         REFERENCES cars(id),
    FOREIGN KEY (customer_id)    REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

-- Comprobación
SHOW TABLES;
