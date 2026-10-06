#Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin CHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year SMALLINT NOT NULL, 
    color VARCHAR(30) NOT NULL
);


CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(30), 
    email VARCHAR(100),
    address VARCHAR(150) NOT NULL,
    city VARCHAR(60) NOT NULL,
    state_province VARCHAR(60) NOT NULL,
    country VARCHAR(60) NOT NULL,
    zip_postal_code VARCHAR(15) NOT NULL
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL, 
    car_id INT NOT NULL UNIQUE, 
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
