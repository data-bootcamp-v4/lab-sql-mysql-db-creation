create database car_dealership;

use car_dealership;

-- 1. Salespersons Table
CREATE TABLE Salespersons (
    salesperson_db_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

-- 2. Customers Table
CREATE TABLE Customers (
    customer_db_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20)
);

-- 3. Cars Table
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(45) UNIQUE NOT NULL,
    manufacturer VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(45)
);

-- 4. Invoices Table (includes FKs)
CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(45) UNIQUE NOT NULL,
    date DATE NOT NULL,
    
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    
    -- Defining foreign key (FKs)
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_db_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_db_id)
);

INSERT INTO Salespersons (staff_id, name, store)
VALUES
    (101, 'John Smith', 'North Motors'),
    (102, 'Anna Kowalski', 'South Motors'),
    (103, 'Carlos Viana', 'Central Motors');
    
INSERT INTO Customers (customer_id, name, phone_number, email, address, city, country, zip_postal_code)
VALUES
    (201, 'Maria Silva', '912345678', 'maria.silva@example.pt', 'Rua Principal, 10', 'Porto', 'Portugal', '4000-001'),
    (202, 'Rui Fernandes', '939876543', 'rui.f@email.com', 'Avenida da Liberdade, 50', 'Lisboa', 'Portugal', '1250-096'),
    (203, 'Sofia Alves', '211234567', 'sofia.a@mail.pt', 'Rua das Flores, 5', 'Braga', 'Portugal', '4700-010');

INSERT INTO Cars (VIN, manufacturer, model, year, color)
VALUES
    ('WVWZZZ3CZ9E123456', 'Volkswagen', 'Golf', 2024, 'Black'),
    ('JF1GH2569FL100001', 'Subaru', 'Impreza', 2023, 'White'),
    ('WBA3A12019E112233', 'BMW', 'X5', 2025, 'Metallic Blue');
    
INSERT INTO Invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES
    -- Sale 1: John Smith (1) sold the VW Golf (1) to Maria Silva (1)
    ('INV-2025-0001', '2025-10-20', 1, 1, 1),
    
    -- Sale 2: Anna Kowalski (2) sold the Subaru (2) to Rui Fernandes (2)
    ('INV-2025-0002', '2025-10-21', 2, 2, 2),
    
    -- Sale 3: Carlos Viana (3) sold the BMW (3) to Sofia Alves (3)
    ('INV-2025-0003', '2025-10-22', 3, 3, 3);
    
UPDATE Salespersons
SET store = 'West Coast Motors'
WHERE salesperson_db_id = 1;

UPDATE Customers
SET email = 'maria.silva@newcorp.com'
WHERE customer_db_id = 1;
