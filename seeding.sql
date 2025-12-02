
INSERT INTO Cars (vin, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO Customers (cust_id, cust_name, cust_zipcode, cust_state, cust_address, cust_city, cust_country, cust_phone)
VALUES 
('C001', 'Alice Johnson', 90210, 'CA', '123 Sunset Blvd', 'Los Angeles', 'USA', '3105551234'),
('C002', 'Carlos Mendes', 1100, 'Lisboa', 'Rua Augusta 45', 'Lisbon', 'Portugal', '912345678'),
('C003', 'Emma Smith', 10001, 'NY', '456 Broadway', 'New York', 'USA', '2125557890');

INSERT INTO Salespersons (staff_id, name, store)
VALUES 
(101, 'João Silva', 'Lisbon Central'),
(102, 'Maria Garcia', 'Porto Norte'),
(103, 'Tom Reynolds', 'LA West');

INSERT INTO Invoices (invoice_number, date, cars_id, customer_pk, salesperson_pk)
VALUES 
(5001, '2025-11-01', 1, 1, 1),
(5002, '2025-11-03', 2, 2, 2),
(5003, '2025-11-05', 3, 3, 3);