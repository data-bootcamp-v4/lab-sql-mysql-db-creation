-- Seeding the 'cars' table
INSERT INTO cars (car_id, vin, model, year, color)
VALUES 
    (1, '1HGCM82633A123456', 'Honda Civic', 2020, 'Red'),
    (2, '2FMPK4AP0JBC12345', 'Ford Escape', 2021, 'Blue'),
    (3, '3VW2P7AT5FM123456', 'Volkswagen Jetta', 2022, 'Black');
    
 -- Seeding the 'customers' table
INSERT INTO customers (customer_id, name, phone_number, email, address, city, state, country, zip_code)
VALUES
    (1, 'John Doe', '123-456-7890', 'johndoe@example.com', '123 Elm St', 'Los Angeles', 'CA', 'USA', '90001'),
    (2, 'Jane Smith', '987-654-3210', 'janesmith@example.com', '456 Oak St', 'San Francisco', 'CA', 'USA', '94101'),
    (3, 'Alice Johnson', '555-123-4567', 'alicej@example.com', '789 Pine St', 'San Diego', 'CA', 'USA', '92101');
    

-- Seeding the 'salespersons' table
INSERT INTO salespersons (salesperson_id, name, store)
VALUES
    (1, 'Sarah Lee', 'Main Street Store'),
    (2, 'David Green', 'Downtown Store'),
    (3, 'Emily White', 'Uptown Store');
    
-- Seeding the 'invoices' table
INSERT INTO invoices (invoice_id, invoice_date, car_id, customer_id, salesperson_id)
VALUES
    (1, '2023-03-01', 1, 1, 2),
    (2, '2023-03-02', 2, 2, 1),
    (3, '2023-03-03', 3, 3, 3);
