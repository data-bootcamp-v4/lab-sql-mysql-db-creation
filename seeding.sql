INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352', 'Honda', 'Civic', 2020, 'Red'),
('1N4AL11D75C109151', 'Nissan', 'Qascai', 2019, 'Black'),
('JHMFA16586S012345', 'Toyota', 'Prius', 2021, 'Blue');

INSERT INTO customers (cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_postalcode) VALUES
('Juan Pérez', '612345678', 'juan.perez@email.com', 'Calle Mayor 1', 'Madrid', 'Madrid', 'España', '28013'),
('Laura Gómez', '623456789', 'laura.gomez@email.com', 'Av. del Parque 2', 'Barcelona', 'Cataluña', 'España', '08001');

INSERT INTO salespersons (name, store) VALUES
('Carlos Sánchez', 'Madrid Central'),
('Ana Ruiz', 'Barcelona Norte');

INSERT INTO invoices (invoice_number, invoice_date, id_car, cust_id, staff_id) VALUES
(1001, '2024-04-01', 1, 1, 1),
(1002, '2024-04-05', 2, 2, 2);