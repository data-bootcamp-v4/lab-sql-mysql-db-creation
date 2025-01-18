INSERT INTO Cars (VIN, manufacturer, model, yearReleased, color)
VALUES 
('1HGBH41JXMN109186', 'Toyota', 'Corolla', 2020, 'Black'),
('WP0AB29974S737534', 'Porsche', '911', 2019, 'Red'),
('JTDKB20U787665850', 'Honda', 'Civic', 2021, 'White');

INSERT INTO Customers (name, phone_number, email, address, city, state_province, country, postal_code)
VALUES
('Alice Johnson', '123-456-7890', 'alice@example.com', '123 Main St', 'Anytown', 'CA', 'USA', '12345'),
('Bob Smith', '987-654-3210', 'bob@example.com', '456 Elm St', 'Sometown', 'NY', 'USA', '54321'),
('Eve Williams', '555-123-4567', 'eve@example.com', '789 Oak St', 'Othercity', 'TX', 'USA', '67890');

INSERT INTO Salespersons (name, store)
VALUES
('John Doe', 'Downtown'),
('Jane Smith', 'Uptown'),
('Bob Johnson', 'Midtown');

INSERT INTO Invoices (date, car_id, customer_id, salesperson_id)
VALUES
('2022-01-15', 1, 1, 2),
('2022-01-16', 2, 3, 1),
('2022-01-17', 3, 2, 3);

INSERT INTO Cars (VIN, manufacturer, model, yearReleased, color)
VALUES 
('4T1BF1FK6DU620786', 'Ford', 'Focus', 2013, 'Silver'),
('KM8SRDHF6HU239442', 'Hyundai', 'Tucson', 2018, 'Blue');

INSERT INTO Customers (name, phone_number, email, address, city, state_province, country, postal_code)
VALUES
('Michael Johnson', '111-222-3333', 'michael@example.com', '789 Pine St', 'Sometown', 'CA', 'USA', '54321'),
('Sarah Miller', '444-555-6666', 'sarah@example.com', '123 Elm St', 'Anytown', 'NY', 'USA', '12345'),
('Chris Davis', '777-888-9999', 'chris@example.com', '456 Oak St', 'Othertown', 'TX', 'USA', '67890');

INSERT INTO Salespersons (name, store)
VALUES
('Emily Wilson', 'Downtown'),
('Mike Brown', 'Uptown'),
('Amanda Lee', 'Midtown');

INSERT INTO Invoices (date, car_id, customer_id, salesperson_id)
VALUES
('2022-01-25', 1, 4, 1),
('2022-01-28', 2, 2, 3);