DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year SMALLINT,
    color VARCHAR(20)
);
-- 2. Create the Customers table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_ID VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(15)
);
-- 3. Create the Salespersons table
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_ID VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50)
);
-- 4. Create the Invoices table
DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    date DATE NOT NULL,
    
    -- Foreign Keys
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    
    -- Foreign Key Constraints
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);
