INSERT INTO `Salespersons` (id, staff_id, name, store)
VALUES (1, 00001, 'John Doe', 'Lisbon'),
       (2, 00002, 'Jane Smith', 'Madrid'),
       (3, 00003, 'Bob Johnson', 'London');
       
INSERT INTO `Customers` (id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES 
    (1, 10001, 'Alice Brown', '1234567890', 'alice.brown@example.com', '123 Main St', 'Lisbon', 'Lisboa', 'Portugal', '1000-001'),
    (2, 10002, 'Carlos Garcia', '9876543210', 'carlos.garcia@example.com', '456 Elm St', 'Madrid', 'Madrid', 'Spain', '28001'),
    (3, 10003, 'Maria Lopez', '5551234567', 'maria.lopez@example.com', '789 Oak St', 'London', 'Greater London', 'United Kingdom', 'EC1A 1BB'),
	(4, 10004, 'Lucas White', '1231231234', NULL, '321 Maple St', 'Paris', NULL, 'France', '75001'),
    (5, 10005, 'Emma Davis', '5555555555', NULL, '654 Pine St', 'Berlin', 'Berlin', 'Germany', '10115'),
    (6, 10006, 'Olivia Green', '4444444444', 'olivia.green@example.com', '987 Spruce St', 'Rome', 'Rome', 'Italy', '00184');

INSERT INTO `Cars` (id, vin, manufacturer, model, year, color)
VALUES 
	(1, '1HGCM82633A004352', 'Toyota', 'Camry', 2020, 'Blue'),
    (2, '1HGCM82633A004353', 'Ford', 'Mustang', 2019, 'Red'),
    (3, '1HGCM82633A004354', 'Honda', 'Civic', 2021, 'Black');

INSERT INTO `Invoices` (id, invoice_number, date, car, customer, salesperson)
VALUES
	(1, 50001, '2023-10-01', 1, 1, 1),
	(2, 50002, '2023-10-05', 2, 2, 2),
    (3, 50003, '2023-10-10', 3, 4, 3);