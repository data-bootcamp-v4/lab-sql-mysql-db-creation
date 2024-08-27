INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES
('absc456', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ndkwje7', 'Peugeot', 'Rifter', 2019, 'Red'),
('edfgh456', 'Ford', 'Fusion', 2018, 'White'),
('dfgh56789', 'Toyota', 'RAV4', 2018, 'Silver'),
('dfghjk456789', 'Volvo', 'V60', 2019, 'Gray'),  -- Ensure this VIN is unique
('DAM41tzu567', 'Volvo', 'V60 Cross Country', 2019, 'Gray'); -- Ensure this VIN is unique

-- Insert data into the Customers table
INSERT INTO customers (customerID, name, phone_number, email, city, state_province, country, zip_code)
VALUES
(10001, 'Pablo Picasso', '+34636176382', '-', 'Madrid', 'Madrid', 'Spain', NULL),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', 'Miami', 'Florida', 'United States', NULL),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', 'Paris', 'Île-de-France', 'France', NULL);

-- Insert data into the Salespersons table
INSERT INTO salespersons (staffID, name, store)
VALUES
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Mimia'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');

-- Insert data into the Invoices table
INSERT INTO invoices (invoicenumber, date, VIN, customerID, staffID)
VALUES
(852399038, '2018-08-22', '3K096I98581DHSNUP', 10001, 3),
(731166526, '2018-12-31', 'RKVXNNIHLVZOU84M', 20001, 5),
(271135104, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 30001, 7);