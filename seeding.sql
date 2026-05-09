USE lab_mysql;

INSERT INTO cars (brand, model, year, price)
VALUES
('Toyota', 'Corolla', 2020, 20000.00),
('Honda', 'Civic', 2021, 22000.00),
('Ford', 'Focus', 2019, 18000.00);

INSERT INTO customers (first_name, last_name, email, phone)
VALUES
('John', 'Doe', 'john.doe@example.com', '123456789'),
('Jane', 'Smith', 'jane.smith@example.com', '987654321'),
('Bob', 'Johnson', 'bob.johnson@example.com', '555666777');

INSERT INTO sales (car_id, customer_id, sale_date, total_amount)
VALUES
(1, 1, '2025-01-10', 20000.00),
(2, 2, '2025-02-15', 22000.00),
(3, 3, '2025-03-20', 18000.00);