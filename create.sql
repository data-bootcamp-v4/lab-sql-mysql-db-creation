-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS car_dealership;
USE car_dealership;

-- Crear la tabla cars
CREATE TABLE IF NOT EXISTS cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(20)
);

-- Crear la tabla customers
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(255) NOT NULL,
    cust_city VARCHAR(100) NOT NULL,
    cust_state VARCHAR(100) NOT NULL,
    cust_country VARCHAR(100) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL
);

-- Establecer el valor inicial de AUTO_INCREMENT a 0
ALTER TABLE customers AUTO_INCREMENT = 0;

-- Crear la tabla salespersons
CREATE TABLE IF NOT EXISTS salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(5) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);

-- Crear la tabla invoices con claves foráneas
CREATE TABLE IF NOT EXISTS invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    FOREIGN KEY (car) REFERENCES cars(car_id),
    FOREIGN KEY (customer) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(salesperson_id)
);