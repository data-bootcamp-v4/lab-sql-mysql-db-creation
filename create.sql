USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year INT(4) NOT NULL,
    color VARCHAR(20)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	id INT,
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL,
    phone VARCHAR(25),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    name_sales VARCHAR(100) NOT NULL,
    store VARCHAR(50)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

