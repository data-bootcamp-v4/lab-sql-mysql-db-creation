INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES 
('1HGCM82633A004352', 'Honda', 'Civic', 2020, 'Blue'),
('1HGCM82633A004353', 'Toyota', 'Corolla', 2019, 'Red'),
('1HGCM82633A004354', 'Ford', 'Mustang', 2021, 'Black');

INSERT INTO customers (name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES 
('John Doe', '555-1234', 'johndoe@example.com', '123 Main St', 'Anytown', 'Anystate', 'USA', '12345'),
('Jane Smith', '555-5678', 'janesmith@example.com', '456 Oak St', 'Othertown', 'Otherstate', 'USA', '67890'),
('Alice Johnson', '555-8765', 'alicejohnson@example.com', '789 Pine St', 'Sometown', 'Somestate', 'USA', '11223');

INSERT INTO salespersons (staff_ID, name, store)
VALUES 
('S001', 'Michael Scott', 'Dunder Mifflin'),
('S002', 'Dwight Schrute', 'Dunder Mifflin'),
('S003', 'Jim Halpert', 'Dunder Mifflin');

INSERT INTO invoices (invoice_number, date, car, customer, salesperson_to_car_sale)
VALUES 
('INV001', '2023-01-15', 1, 1, 1),
('INV002', '2023-02-20', 2, 2, 2),
('INV003', '2023-03-10', 3, 3, 3);
