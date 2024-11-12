DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE salespersons(
    staff_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255) NOT NULL,
    PRIMARY KEY(staff_id)
);
CREATE TABLE invoices(
    invoice_number VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    car VARCHAR(255) NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    PRIMARY KEY(invoice_number)
);
ALTER TABLE
    invoices ADD UNIQUE invoices_car_unique(car);
ALTER TABLE
    invoices ADD UNIQUE invoices_customer_unique(customer);
ALTER TABLE
    invoices ADD UNIQUE invoices_salesperson_unique(salesperson);
CREATE TABLE cars(
    vin VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(255) NOT NULL,
    PRIMARY KEY(`vin`)
);
CREATE TABLE customers(
    cust_id INT NOT NULL,
    cust_name VARCHAR(255) NOT NULL,
    cust_phone VARCHAR(255) NOT NULL,
    cust_email VARCHAR(255) NULL,
    cust_address VARCHAR(255) NOT NULL,
    cust_city VARCHAR(255) NOT NULL,
    cust_state VARCHAR(255) NOT NULL,
    cust_country VARCHAR(255) NOT NULL,
    cust_zipcode INT NOT NULL,
    PRIMARY KEY(cust_id)
);
ALTER TABLE
    invoices ADD CONSTRAINT invoices_salesperson_foreign FOREIGN KEY(salesperson) REFERENCES salespersons(staff_id);
ALTER TABLE
    invoices ADD CONSTRAINT invoices_car_foreign FOREIGN KEY(car) REFERENCES cars(vin);
ALTER TABLE
    invoices ADD CONSTRAINT invoices_customer_foreign FOREIGN KEY(customer) REFERENCES customers(cust_id);