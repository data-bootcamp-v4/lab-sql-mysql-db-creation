USE lab_mysql;

-- Seed cars
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
-- Seed customers
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES (10001, 'Lucía Martín García', '+34 612 345 678', NULL, 'Calle de Alcalá, 120', 'Madrid', 'Madrid', 'España', '28009'),
       (20001, 'Carmen Ruiz López', '+34 634 567 890', NULL, 'Carrer de Mallorca, 45', 'Barcelona', 'Barcelona', 'España', '08029'),
       (30001, 'Elena Navarro Torres', '+34 655 789 012', NULL, 'Avenida de la Constitución, 8', 'Sevilla', 'Sevilla', 'España', '41004');

-- Seed salespersons
INSERT INTO salespersons (staff_id, staff_name, staff_store)
VALUES ('00001', 'Marta Sánchez Gil', 'Madrid'),
       ('00002', 'Laura Romero Díaz', 'Barcelona'),
       ('00003', 'Paula Moreno Ortiz', 'Valencia'),
       ('00004', 'Sara Jiménez Ramos', 'Sevilla'),
       ('00005', 'Ana Castro Molina', 'Bilbao'),
       ('00006', 'Irene Vázquez Serrano', 'Málaga'),
       ('00007', 'Nuria Herrera Blanco', 'Zaragoza'),
       ('00008', 'Cristina Prieto Delgado', 'A Coruña');

-- Seed invoices
-- Dates come in DD-MM-YYYY format, so they are converted with STR_TO_DATE
INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, salesperson_id)
VALUES ('852399038', STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 1, 1, 3),
       ('731166526', STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 3, 3, 5),
       ('271135104', STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 2, 2, 7);

SELECT * FROM invoices;