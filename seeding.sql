CREATE SCHEMA IF NOT EXISTS `mydb`;
USE `mydb`;
SHOW TABLES;
SHOW TABLES;
INSERT INTO car (vin, manufacturer, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');
INSERT INTO customers (customer_id, name, phone_number, email, address, city, `state/province`, country, `zip/postal_code`)
VALUES ('C001', 'Pablo Picasso', '123', 'pp@gmail.com', 'Street', 'Madrid', 'Madrid', 'Spain', '28045');
INSERT INTO salespersons (staff_id, name, store_name)
VALUES
('S001', 'John Smith', 'Amsterdam Store'),
('S002', 'Emma Jones', 'Rotterdam Store');
INSERT INTO invoices (invoices_number, date, car, customer)
VALUES
('INV-001', '2019-08-22', '3K096I98581DHSNUP', 'Pablo Picasso'),
('INV-002', '2019-08-23', 'ZM8G7BEUQZ97IH46V', 'Jane Smith');