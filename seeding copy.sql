USE lab_mysql;

INSERT INTO cars (VIN, manufacturer, model, year, color) VALUES
('1HGCM82633A123456', 'Toyota', 'Corolla', 2022, 'Blue'),
('1HGCM82633A654321', 'Honda', 'Civic', 2021, 'Red'),
('3VWFE21C04M000001', 'Volkswagen', 'Golf', 2023, 'Black');

INSERT INTO customers (name, phone_number, email, address, city, state, country, zip) VALUES
('John Doe', '123456789', 'john.doe@example.com', '123 Main St', 'New York', 'NY', 'USA', '10001'),
('Jane Smith', '987654321', 'jane.smith@example.com', '456 Elm St', 'Los Angeles', 'CA', 'USA', '90001'),
('Bob Johnson', '555123456', 'bob.johnson@example.com', '789 Oak St', 'Chicago', 'IL', 'USA', '60601');

INSERT INTO salespersons (name, store) VALUES
('Alice Brown', 'Toyota Dealership'),
('Michael Green', 'Honda Center'),
('Sarah White', 'Volkswagen Store');

INSERT INTO invoices (date, car_VIN, customer_id, salesperson_id) VALUES
('2024-03-10', '1HGCM82633A123456', 1, 1),
('2024-03-11', '1HGCM82633A654321', 2, 2),
('2024-03-12', '3VWFE21C04M000001', 3, 3);
