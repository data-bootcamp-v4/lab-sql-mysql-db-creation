USE lab_mysql;

-- Insert sample data into Cars table
INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES 
    ('1HGCM82633A123456', 'Toyota', 'Corolla', 2022, 'Blue'),
    ('2T3BF4DV3AW123789', 'Honda', 'Civic', 2021, 'Red'),
    ('3N1AB7AP1KY987654', 'Ford', 'Focus', 2023, 'Black'),
    ('4T1BF1FK5HU567321', 'BMW', 'X5', 2020, 'White'),
    ('5YJSA1E26KF123987', 'Tesla', 'Model S', 2023, 'Silver');

-- Insert sample data into Customers table
INSERT INTO customers (first_name, last_name, phone_number, email, address, city, state, country, zip_code)
VALUES 
    ('John', 'Doe', '1234567890', 'john.doe@example.com', '123 Elm Street', 'New York', 'NY', 'USA', '10001'),
    ('Jane', 'Smith', '9876543210', 'jane.smith@example.com', '456 Oak Avenue', 'Los Angeles', 'CA', 'USA', '90001'),
    ('Michael', 'Brown', '5556667777', 'michael.b@example.com', '789 Maple Blvd', 'Chicago', 'IL', 'USA', '60601'),
    ('Emily', 'Johnson', '2223334444', 'emily.j@example.com', '101 Pine Road', 'Houston', 'TX', 'USA', '77001'),
    ('Chris', 'Evans', '9998887777', 'chris.evans@example.com', '202 Birch Lane', 'Miami', 'FL', 'USA', '33101');

-- Insert sample data into Stores table
INSERT INTO stores (store_name, address, city, state, zip_code)
VALUES 
    ('Auto World NY', '500 Madison Ave', 'New York', 'NY', '10022'),
    ('LA Auto Hub', '700 Sunset Blvd', 'Los Angeles', 'CA', '90028'),
    ('Chicago Car Center', '300 Wacker Dr', 'Chicago', 'IL', '60606');

-- Insert sample data into Salespersons table
INSERT INTO salespersons (first_name, last_name, store_id)
VALUES 
    ('Alice', 'Miller', 1),
    ('Bob', 'Anderson', 1),
    ('Charlie', 'Davis', 2),
    ('Diana', 'Moore', 2),
    ('Edward', 'Clark', 3);

-- Insert sample data into Invoices table
INSERT INTO invoices (invoice_date, car_id, customer_id, salesperson_id, total_price)
VALUES 
    ('2024-03-01 10:30:00', 1, 1, 1, 25000.00),
    ('2024-03-05 15:45:00', 2, 2, 2, 22000.50),
    ('2024-03-10 12:20:00', 3, 3, 3, 27000.75),
    ('2024-03-15 14:10:00', 4, 4, 4, 55000.00),
    ('2024-03-20 11:05:00', 5, 5, 5, 80000.99);
