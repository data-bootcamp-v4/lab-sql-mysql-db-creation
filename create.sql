USE lab_mysql;

CREATE TABLE cars (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(20) UNIQUE NOT NULL,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL CHECK (year >= 1886),
    color VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip VARCHAR(20) NOT NULL
);

CREATE TABLE salespersons (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL,
    vehicle_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES cars(vehicle_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);
