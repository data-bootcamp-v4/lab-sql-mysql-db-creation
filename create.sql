CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state_province VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_postal_code VARCHAR(20) NOT NULL
);

CREATE TABLE Salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);

CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id) ON DELETE CASCADE
);