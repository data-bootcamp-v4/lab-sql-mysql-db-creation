USE lab_mysql;

INSERT INTO cars (id, vin, manufacturer, model, year, color, mileage)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 12000),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 9000),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 15000),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 20000),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 11000),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 8000);

INSERT INTO customers (
    id, customer_name, customer_email, customer_phone_number,
    customer_street, customer_zipcode, customer_city,
    customer_state, customer_country, customer_loyalty_level
)
VALUES
(1, 'Pablo Picasso', NULL, '+34 636 17 63 82', 'Paseo de la Chopera, 14', '28045', 'Madrid', 'Madrid', 'Spain', 'Gold'),
(2, 'Abraham Lincoln', NULL, '+1 305 907 7086', '120 SW 8th St', '33130', 'Miami', 'Florida', 'United States', 'Silver'),
(3, 'Napoléon Bonaparte', NULL, '+33 1 79 75 40 00', '40 Rue du Colisée', '75008', 'Paris', 'Île-de-France', 'France', 'Gold');

INSERT INTO salespersons (
    id, salesperson_name, salesperson_hire_date,
    salesperson_seniority_level, store_id, store_location_name
)
VALUES
(1, 'Petey Cruiser', '2017-01-10', 'Junior', 101, 'Madrid'),
(2, 'Anna Sthesia', '2016-03-15', 'Senior', 102, 'Barcelona'),
(3, 'Paul Molive', '2015-06-20', 'Senior', 103, 'Berlin'),
(4, 'Gail Forcewind', '2018-09-01', 'Junior', 104, 'Paris'),
(5, 'Paige Turner', '2019-02-11', 'Junior', 105, 'Miami'),
(6, 'Bob Frapples', '2014-07-07', 'Senior', 106, 'Mexico City'),
(7, 'Walter Melon', '2013-04-25', 'Senior', 107, 'Amsterdam'),
(8, 'Shonda Leer', '2020-11-12', 'Junior', 108, 'São Paulo');

INSERT INTO invoices (id, invoice_number, invoice_date, car_id, customer_id, salesperson_id)
VALUES
(1, 852399038, '2018-08-22', 1, 1, 3),
(2, 731166526, '2018-12-31', 3, 3, 5),
(3, 271135104, '2019-01-22', 2, 2, 7);
