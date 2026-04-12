CREATE SCHEMA IF NOT EXISTS lab_sql_mysql_db_creation;
USE lab_sql_mysql_db_creation;

-- Drop tables in correct order (child → parent)
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Cars;

-- CARS TABLE
CREATE TABLE Cars(
    car_id INT AUTO_INCREMENT,
    vehicle_identification_number_VIN VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    car_year INT,
    car_color ENUM('white','black','red','blue','silver','gray'),
    PRIMARY KEY (car_id),
    UNIQUE (vehicle_identification_number_VIN)
);

-- CUSTOMERS TABLE
CREATE TABLE Customers(
    customer_ID INT AUTO_INCREMENT,
    customer_name VARCHAR(50),
    phone_number VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10),
    vehicle_identification_number_VIN VARCHAR(20),
    PRIMARY KEY (customer_ID),
    CONSTRAINT fk_customer_car
        FOREIGN KEY (vehicle_identification_number_VIN)
        REFERENCES Cars(vehicle_identification_number_VIN)
);

-- SALESPERSONS TABLE
CREATE TABLE Salespersons(
    staff_ID INT AUTO_INCREMENT,
    sales_name VARCHAR(50),
    store VARCHAR(50),
    PRIMARY KEY (staff_ID)
);

-- INVOICES TABLE
CREATE TABLE Invoices (
    invoice_number INT AUTO_INCREMENT, 
    invoice_date VARCHAR(50),
    vehicle_identification_number_VIN VARCHAR(20),
    customer_ID INT,
    staff_ID INT,
    PRIMARY KEY (invoice_number),

    CONSTRAINT fk_invoices_cars
        FOREIGN KEY (vehicle_identification_number_VIN)
        REFERENCES Cars(vehicle_identification_number_VIN),

    CONSTRAINT fk_invoices_customers
        FOREIGN KEY (customer_ID)
        REFERENCES Customers(customer_ID),

    CONSTRAINT fk_invoices_salespersons
        FOREIGN KEY (staff_ID)
        REFERENCES Salespersons(staff_ID)
);