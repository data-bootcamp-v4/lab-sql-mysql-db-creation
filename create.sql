USE autos;
CREATE TABLE cars (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year INT,
    color VARCHAR(50)
);

CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(50),
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

CREATE TABLE salespersons (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) UNIQUE,
    name VARCHAR(100),
    store VARCHAR(50)
);

CREATE TABLE invoices (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number BIGINT,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);