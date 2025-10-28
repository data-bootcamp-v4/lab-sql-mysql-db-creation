USE lab_mysql;

-- Insert sample data into cars
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352', 'Honda', 'Accord', 2020, 'Black'),
('2T1BURHE5JC123456', 'Toyota', 'Corolla', 2019, 'White'),
('3FA6P0H73HR123789', 'Ford', 'Fusion', 2021, 'Blue');

-- Insert sample data into customers
INSERT INTO customers (name, phone, email, address, city, state, country, zipcode) VALUES
('Alice Johnson', '555-1234', 'alice@example.com', '123 Maple St', 'Springfield', 'IL', 'USA', '62704'),
('Bob Smith', '555-5678', 'bob@example.com', '456 Oak Ave', 'Chicago', 'IL', 'USA', '60616'),
('Charlie Brown', '555-9012', 'charlie@example.com', '789 Pine Rd', 'Naperville', 'IL', 'USA', '60540');

-- Insert sample data into salespersons
INSERT INTO salespersons (name, store) VALUES
('Diana Prince', 'Downtown'),
('Clark Kent', 'Uptown'),
('Bruce Wayne', 'Suburban');

-- Insert sample data into invoices
INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, staff_id) VALUES
('INV001', '2023-01-15', 1, 1, 1),
('INV002', '2023-02-20', 2, 2, 2),
('INV003', '2023-03-10', 3, 3, 3);
