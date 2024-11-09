-- Insertar datos en la tabla Cars
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

-- Insertar datos en la tabla Customers
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES 
    ('10001', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('20001', 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insertar datos en la tabla Salespersons
INSERT INTO salespersons (staff_id, name, store)
VALUES 
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin');

-- Insertar datos en la tabla Invoices
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES 
    ('852399038', '2018-08-22', 1, 1, 3),
    ('731166526', '2018-12-31', 3, 3, 2),
    ('271135104', '2019-01-22', 2, 2, 1);
