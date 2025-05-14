CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Eliminamos invoices primero porque depende de cars, customers y salespersons
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- Tabla cars
CREATE TABLE IF NOT EXISTS cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY, --  columna de identificación numérica con incremento automático utilizando la función AUTO INCREMENT
    vin VARCHAR(17) NOT NULL UNIQUE, -- NOT NULL indica que no se puede dejar vacío (es obligatorio), UNIQUE indica que debe ser única, VARCHAR indica número máximo de caracteres
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL, -- Usamos YEAR porque almacena el formato correcto
    color VARCHAR(20) 
);

-- Tabla customers
CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Tabla salespersons
CREATE TABLE IF NOT EXISTS salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL UNIQUE,
    salesperons_name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

-- Tabla invoices
CREATE TABLE IF NOT EXISTS invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL UNIQUE,
    invoices_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id), -- FOREIGN KEY para conectar una tabla con otra y relacionarlas, es decir por ejemplo: la tabla invoices el apartado car debe coincidir con el id de la tabla cars (cada factura debe estar asociada a un coche que exista)
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);