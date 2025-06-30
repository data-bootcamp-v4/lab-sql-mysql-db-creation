USE lab_mysql;

-- Seed cars
INSERT INTO cars (VIN, manufacturer, model, year, color) VALUES
('1HGCM82633A004352', 'Honda', 'Accord', 2020, 'Blue'),
('2T1BURHE0JC078123', 'Toyota', 'Corolla', 2019, 'White'),
('1FTFW1ET2EFA12345', 'Ford', 'F-150', 2021, 'Black');

-- Seed customers
INSERT INTO customers (customer_id, name, email, zip_code, city_province, country, street_name, phone_number) VALUES
(1, 'Alice Johnson', 'alice@example.com', '10001', 'New York', 'USA', '5th Avenue', '555-1234'),
(2, 'Bob Smith', 'bob@example.com', '90001', 'Los Angeles', 'USA', 'Sunset Blvd', '555-5678'),
(3, 'Carol Lee', 'carol@example.com', '60601', 'Chicago', 'USA', 'Michigan Ave', '555-9012');

-- Seed salesperson
INSERT INTO salesperson (staff_id, name, store) VALUES
(1, 'David Miller', 'Downtown Motors'),
(2, 'Evelyn Carter', 'City Auto Mall');

-- Seed invoices
INSERT INTO invoices (invoice_number, staff_id, date, VIN, customer_id) VALUES
(1001, 1, '2024-06-01', '1HGCM82633A004352', 1),
(1002, 2, '2024-06-05', '2T1BURHE0JC078123', 2),
(1003, 1, '2024-06-10', '1FTFW1ET2EFA12345', 3);