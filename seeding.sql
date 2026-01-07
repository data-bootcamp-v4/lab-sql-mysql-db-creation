USE lab_mysql;

INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('1ABCD12345E123456', 'Audi', 'TT', 2018, 'Red'),
('2ABCD12345E123456', 'Ford', 'F 150', 2021, 'Silver'),
('3ABCD12345E123456', 'Dodge', 'Ram', 2019, 'Black');

INSERT INTO customers (customer_id, name, phone, email, address, city, state_province, country, postal_code)
VALUES
('01', 'Bruno Mars', '123-4567', 'bruno.mars@email.com', '123 Main St', 'New York', 'NY', 'USA', '1234'),
('02', 'Brad Pitt', '765-4321', 'brad.pitt@email.com', '456 Oak Ave', 'Los Angeles', 'CA', 'USA', '5678'),
('03', 'Steve Harvey', '678-9012', 'steve.harvey@email.com', '789 Pine Rd', 'Chicago', 'IL', 'USA', '9012');


INSERT INTO salespersons (staff_id, name, store)
VALUES
('01', 'Rodrigo Quintiliano', 'LA Wheels'),
('02', 'Miguel Gomes', 'NYCW');


INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_pk, salesperson_pk)
VALUES
('01', '2025-01-01', 1, 1, 1),
('02', '2025-01-02', 2, 2, 2),
('03', '2025-01-03', 3, 3, 1);

SELECT * FROM invoices;
