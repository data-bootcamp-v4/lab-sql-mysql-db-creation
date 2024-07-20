USE CAR_DB;

-- Create the cars table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50),
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year YEAR,
    color VARCHAR(100)
);

-- Create the customers table
CREATE TABLE customers (
    cus_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL UNIQUE,
    customer_name VARCHAR(100),
    customer_phone INT,
    customer_mail VARCHAR(50),
    customer_address VARCHAR(255),
    city VARCHAR(50),
    State VARCHAR(50),
    zip_code VARCHAR(20),
    country VARCHAR(50)
);

-- Create the salesperson table
CREATE TABLE salesperson (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL UNIQUE,
    staff_name VARCHAR(50),
    store VARCHAR(50)
);

-- Create the invoices table
CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    invoice_date DATE,
    car_id INT,
    cus_id INT,
    sale_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (cus_id) REFERENCES customers(cus_id),
    FOREIGN KEY (sale_id) REFERENCES salesperson(sale_id)
);
