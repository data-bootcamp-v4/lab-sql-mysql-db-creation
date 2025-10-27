USE lab_mysql;
INSERT into suppliers (phone, email, address, VAT_number)
VALUES  ('2266789023', 'info@supplier1.com', 'anywhere on earth', '123245589'), ('2266789023', 'info@supplier2.com', 'anywhere on earth', '123245589'), ('2266789023', 'info@supplier3.com', 'anywhere on earth', '123245589');

INSERT into cars_inventory (VIN, manufacturer, model, production_year, horse_power, motor_size, colour, supplierID)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', '100', '1800', 'grey', '3'), ('ZM8G7BEUQZ97IH46V', 'Volkswagen', 'Tiguan', '2019', '100', '1800', 'grey', '1'), ('DAM41UDN3CHU2WVF6', 'Volkswagen', 'Tiguan', '2019', '100', '1800', 'grey', '2');

INSERT into sales_person (first_name, last_name, email, phone, job_title, store)
VALUES ('Dummy', 'Name', 'dummyname@email.com', '23545589', 'sales person', 'Dummy city'), ('Dummy', 'Name', 'dummyname@email.com', '23545589', 'sales person', 'Dummy city'), ('Dummy', 'Name', 'dummyname@email.com', '23545589', 'sales person', 'Dummy city');

INSERT into customers (first_name, last_name, email, phone, address, job_title, store)
VALUES ('Dummy', 'Name', 'dummyname@email.com', '23545589', 'Paseo de la Chopera, 14', 'CEO', 'Dummy city'), ('Dummy', 'Name', 'dummyname@email.com', '23545589', 'Paseo de la Chopera, 14', 'CEO', 'Dummy city'), ('Dummy', 'Name', 'dummyname@email.com', '23545589', 'Paseo de la Chopera, 14', 'CEO', 'Dummy city');

INSERT into invoices (date, VIN, supplierID, staffID, customerID)
VALUES ('2020-01-01', '3K096I98581DHSNUP', '3', '1', '2'), ('2020-01-01', 'ZM8G7BEUQZ97IH46V', '1', '3', '1'), ('2020-01-01', 'DAM41UDN3CHU2WVF6', '2', '2', '3')