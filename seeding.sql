USE lab_mysql;

INSERT INTO cars (car_id, vin, manufacturer, model, year, color)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7IW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (customer_id, name, email, city)
VALUES
(1, 'Pablo Picasso', 'pablo@email.com', 'Madrid'),
(2, 'Abraham Lincoln', 'lincoln@email.com', 'Miami'),
(3, 'Napoleon Bonaparte', 'napoleon@email.com', 'Paris');

INSERT INTO salespersons (salesperson_id, name)
VALUES
(1, 'Petey Cruiser'),
(2, 'Anna Sthesia'),
(3, 'Paul Molive'),
(4, 'Gail Forcewind'),
(5, 'Paige Turner'),
(6, 'Bob Frapples'),
(7, 'Walter Melon'),
(8, 'Shonda Leer');

INSERT INTO invoices (invoice_id, date, car_id, customer_id, salesperson_id)
VALUES
(1, '2018-08-22', 1, 1, 3),
(2, '2018-12-31', 3, 3, 5),
(3, '2019-01-22', 2, 2, 7);

