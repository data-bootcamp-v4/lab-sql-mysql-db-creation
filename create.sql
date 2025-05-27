CREATE DATABASE IF NOT EXISTS lab_mysql;

DROP TABLE IF EXISTS lab_mysql.invoices;
DROP TABLE IF EXISTS lab_mysql.salespersons;
DROP TABLE IF EXISTS lab_mysql.customers;
DROP TABLE IF EXISTS lab_mysql.cars;

CREATE TABLE lab_mysql.cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE NOT NULL,
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(50)
);

CREATE TABLE lab_mysql.customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(100),
    phone VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_postal VARCHAR(20)
);

CREATE TABLE lab_mysql.salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(100),
    store VARCHAR(100)
);

CREATE TABLE lab_mysql.invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) UNIQUE NOT NULL,
    date DATE,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,

    FOREIGN KEY (car_id) REFERENCES lab_mysql.cars(id),
    FOREIGN KEY (customer_id) REFERENCES lab_mysql.customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES lab_mysql.salespersons(id)
);

select * from lab_mysql.invoices;
