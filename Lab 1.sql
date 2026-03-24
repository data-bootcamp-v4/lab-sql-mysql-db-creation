CREATE SCHEMA lab_1;
USE lab_1;

CREATE TABLE cars (
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT NOT NULL,
    Colour VARCHAR(30),
    PRIMARY KEY (VIN)
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(200)
);

CREATE TABLE salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(100)
);

CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    VIN VARCHAR(17),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (VIN) REFERENCES cars(VIN),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);



