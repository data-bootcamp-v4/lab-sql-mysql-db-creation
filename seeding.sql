-- Insertar datos en la tabla `customers`
INSERT INTO customers (customer_id, name, phone_number, email, address, city, state, country, zip)
VALUES 
(1, 'John Doe', '123-456-7890', 'johndoe@example.com', '123 Main St', 'New York', 'NY', 'USA', '10001'),
(2, 'Jane Smith', '987-654-3210', 'janesmith@example.com', '456 Oak St', 'Los Angeles', 'CA', 'USA', '90001'),
(3, 'Carlos Gómez', '456-789-1234', 'carlosgomez@example.com', '789 Pine St', 'Miami', 'FL', 'USA', '33101');

-- Insertar datos en la tabla `cars`
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('1HGCM82633A004352', 'Honda', 'Accord', 2020, 'Black'),
('1HGCM82633A004353', 'Toyota', 'Corolla', 2019, 'Blue'),
('1HGCM82633A004354', 'Ford', 'Mustang', 2021, 'Red');

-- Insertar datos en la tabla `salespersons`
INSERT INTO salespersons (staff_id, name, store)
VALUES 
(1, 'Alice Johnson', 'Downtown Branch'),
(2, 'Mark Spencer', 'Uptown Branch'),
(3, 'Sarah Brown', 'Suburban Branch');

-- Insertar datos en la tabla `invoices`
INSERT INTO invoices (invoice_number, date, vin, customer_id, staff_id)
VALUES 
(1, '2024-09-01', '1HGCM82633A004352', 1, 1),
(2, '2024-09-02', '1HGCM82633A004353', 2, 2),
(3, '2024-09-03', '1HGCM82633A004354', 3, 3);
