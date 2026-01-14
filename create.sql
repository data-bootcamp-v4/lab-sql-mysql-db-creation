USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year YEAR,
    color VARCHAR(255)
);

CREATE TABLE customers (
    customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    zip_postal VARCHAR(255)
);

CREATE TABLE salespersons (
    staff_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255)
);


CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(ID),
    FOREIGN KEY (customer) REFERENCES customers(customer_ID),
    FOREIGN KEY (salesperson) REFERENCES salespersons(staff_ID)
);