-- Insertar datos en la tabla `customers`
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) 
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    (20001, 'Abraham Lincoln', '+1 305 907 7086', 'lincoln@us.gov', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'hello@napoleon.me', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insertar datos en la tabla `salespersons`
INSERT INTO salespersons (staff_id, name, store) 
VALUES
    (00001, 'Petey Cruiser', 'Madrid'),
    (00002, 'Anna Sthesia', 'Barcelona'),
    (00003, 'Paul Molive', 'Berlin'),
    (00004, 'Gail Forcewind', 'Paris'),
    (00005, 'Paige Turner', 'Miami'),
    (00006, 'Bob Frapples', 'Mexico City'),
    (00007, 'Walter Melon', 'Amsterdam'),
    (00008, 'Shonda Leer', 'São Paulo');

-- Insertar datos en la tabla `invoices`
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) 
VALUES
    (852399038, '2018-08-22', 1, 1, 3),
    (731166526, '2018-12-31', 3, 3, 5),
    (271135104, '2019-01-22', 2, 2, 7);
