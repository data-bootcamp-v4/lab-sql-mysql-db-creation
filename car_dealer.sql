
USE `[car_dealer]`;

-- Eliminar tablas si ya existen (hay una dos veces porque la creé y la puse sin querer con mayúscula antes)
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS car;

-- Crear la tabla `car`
CREATE TABLE car (
    VIN INT NOT NULL AUTO_INCREMENT,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30),
    PRIMARY KEY (VIN)
);

-- Crear la tabla `customer`
CREATE TABLE customer (
    customer_ID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address TEXT,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10),
    PRIMARY KEY (customer_ID)
);

-- Crear la tabla `salesperson`
CREATE TABLE salesperson (
    staff_ID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    store VARCHAR(100),
    PRIMARY KEY (staff_ID)
);

-- Crear la tabla `Invoices` con sus valores referenciando lo demás
CREATE TABLE invoices (
    number INT NOT NULL AUTO_INCREMENT,
    date DATE,
    car_VIN INT,
    customer_ID INT,
    staff_ID INT,
    PRIMARY KEY (number),
    FOREIGN KEY (car_VIN) REFERENCES car(VIN),
    FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
    FOREIGN KEY (staff_ID) REFERENCES salesperson(staff_ID)
);

