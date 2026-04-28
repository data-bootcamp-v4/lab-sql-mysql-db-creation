CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;


CREATE TABLE cars (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    vin          VARCHAR(20)  NOT NULL,            
    manufacturer VARCHAR(50)  NOT NULL,           
    model        VARCHAR(50)  NOT NULL,            
    year         YEAR         NOT NULL,            
    color        VARCHAR(20)                      
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    cust_id      INT          NOT NULL,
    cust_name    VARCHAR(100) NOT NULL,
    cust_phone   VARCHAR(20),
    cust_email   VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city    VARCHAR(50),
    cust_state   VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(10)
);


DROP TABLE IF EXISTS salespersons;

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    staff_id     INT          NOT NULL,
    name         VARCHAR(100) NOT NULL,
    store        VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id               INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number   VARCHAR(50)  NOT NULL,
    date             DATE         NOT NULL,
    car_id           INT          NOT NULL,
    customer_id      INT          NOT NULL,
    salesperson_id   INT          NOT NULL
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id               INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number   VARCHAR(50)  NOT NULL,
    date             DATE         NOT NULL,
    car_id           INT          NOT NULL,
    customer_id      INT          NOT NULL,
    salesperson_id   INT          NOT NULL,
    
    -- Foreign keys
    CONSTRAINT fk_car 
        FOREIGN KEY (car_id) 
        REFERENCES cars(id),
    
    CONSTRAINT fk_customer 
        FOREIGN KEY (customer_id) 
        REFERENCES customers(id),
    
    CONSTRAINT fk_salesperson 
        FOREIGN KEY (salesperson_id) 
        REFERENCES salespersons(id)
);

-- Crear y usar la base de datos
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Tabla cars
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    vin          VARCHAR(20)  NOT NULL,
    manufacturer VARCHAR(50)  NOT NULL,
    model        VARCHAR(50)  NOT NULL,
    year         YEAR         NOT NULL,
    color        VARCHAR(20)
);

-- Tabla customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    cust_id      INT          NOT NULL,
    cust_name    VARCHAR(100) NOT NULL,
    cust_phone   VARCHAR(20),
    cust_email   VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city    VARCHAR(50),
    cust_state   VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(10)
);

-- Tabla salespersons
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id       INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT          NOT NULL,
    name     VARCHAR(100) NOT NULL,
    store    VARCHAR(100) NOT NULL
);


DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) NOT NULL,
    date           DATE        NOT NULL,
    car_id         INT         NOT NULL,
    customer_id    INT         NOT NULL,
    salesperson_id INT         NOT NULL,
    
    CONSTRAINT fk_car
        FOREIGN KEY (car_id)
        REFERENCES cars(id),
    
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(id),
    
    CONSTRAINT fk_salesperson
        FOREIGN KEY (salesperson_id)
        REFERENCES salespersons(id)
);

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;


