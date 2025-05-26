USE lab_mysql;

-- Cars
INSERT INTO cars (make, model, year, price, available)
VALUES 
('Toyota', 'Yaris', 2020, 24000.00, TRUE),
('Honda', 'Civic', 2021, 22000.00, TRUE),
('Ford', 'Focus', 2019, 26000.00, FALSE);

-- Customers
INSERT INTO customers (first_name, last_name, email, phone, address)
VALUES 
('John', 'Smith', 'johnsmith@gmail.com', '617788998', '1 Lakeside Road'),
('Max', 'Pisolkar', 'johnsmioth@gmail.com', '616524865', '2 Fox Lane');

-- Salespersons
INSERT INTO salespersons (first_name, last_name, email, phone)
VALUES 
('Harry', 'Kane', 'harrykane@gmail.com', '88877555'),
('Brennan', 'Johnson', 'bj@gmail.com', '99988777');

-- Invoices
INSERT INTO invoices (car_id, customer_id, salesperson_id, sale_date, sale_price)
VALUES 
(1, 1, 1, '2025-05-25', 24000.00),
(2, 2, 2, '2025-05-26', 22000.00);
