USE lab_mysql;

INSERT INTO manufacturers (manufacturer)
VALUES
('Volkswagen'),
('Peugeot'),
('Ford'),
('Toyota'),
('Volvo');

INSERT INTO colors (color)
VALUES
('Blue'),
('Red'),
('White'),
('Silver'),
('Gray');

INSERT INTO models (manufacturer_id, model)
VALUES
(1, 'Tiguan'),
(2, 'Rifter'),
(3, 'Fusion'),
(4, 'RAV4'),
(5, 'V60'),
(5, 'V60 Cross Country');

INSERT INTO cars
(vin, model_id, color_id, production_year)
VALUES
('3K096I98581DHSNUP', 1, 1, 2019),
('ZM8G7BEUQZ97IH46V', 2, 2, 2019),
('RKXVNNIHLVVZOUB4M', 3, 3, 2018),
('HKNDGS7CU31E9Z7JW', 4, 4, 2018),
('DAM41UDN3CHU2WVF6', 5, 5, 2019);

SELECT
    c.car_id,
    c.vin,
    m.manufacturer,
    mo.model,
    c.production_year,
    co.color
FROM cars c
JOIN models mo
    ON c.model_id = mo.model_id
JOIN manufacturers m
    ON mo.manufacturer_id = m.manufacturer_id
JOIN colors co
    ON c.color_id = co.color_id;
    
INSERT INTO country (country_name)
VALUES
('Spain'),
('United States'),
('United States');

UPDATE country
SET country_name = 'France'
WHERE country_id = 3;

INSERT INTO state (state_name,country_id)
VALUES
('Madrid',1),
('Florida',2),
('Île-de-France',3);

INSERT INTO city (city_name,state_id)
VALUES
('Madrid',1),
('Miami',2),
('Paris',3);

-- TRUNCATE TABLE customers;
INSERT INTO customers
(
    cust_id,
    customer_name,
    phone_number,
    email,
    address,
    city_id,
    postal_code
)
VALUES
(
    10001,
    'Pablo Picasso',
    '+34 636 17 63 82',
    NULL,
    'Paseo de la Chopera, 14',
    1,
    '28045'
),
(
    20001,
    'Abraham Lincoln',
    '+1 305 907 7086',
    NULL,
    '120 SW 8th St',
    2,
    '33130'
),
(
    30001,
    'Napoléon Bonaparte',
    '+33 1 79 75 40 00',
    NULL,
    '40 Rue du Colisée',
    3,
    '75008'
);

INSERT INTO stores
(store_name)
VALUES
('Madrid'),
('Barcelona'),
('Berlin'),
('Paris'),
('Mimia'),
('Mexico City'),
('Amsterdam'),
('São Paulo');

ALTER TABLE salespersons
ADD COLUMN staff_id VARCHAR(10) UNIQUE;

INSERT INTO salespersons
(
    staff_id,
    salesperson_name,
    store_id
)
VALUES
('00001', 'Petey Cruiser', 1),
('00002', 'Anna Sthesia', 2),
('00003', 'Paul Molive', 3),
('00004', 'Gail Forcewind', 4),
('00005', 'Paige Turner', 5),
('00006', 'Bob Frapples', 6),
('00007', 'Walter Melon', 7),
('00008', 'Shonda Leer', 8);

SELECT
    sp.staff_id,
    sp.salesperson_name,
    st.store_name
FROM salespersons sp
JOIN stores st
    ON sp.store_id = st.store_id;

INSERT INTO invoices
(
    invoice_number,
    invoice_date,
    car_id,
    customer_id,
    salesperson_id
)
VALUES
(
    '852399038',
    '2018-08-22',
    1,
    1,
    3
),
(
    '731166526',
    '2018-12-31',
    3,
    3,
    5
),
(
    '271135104',
    '2019-01-22',
    2,
    2,
    7
);

select * from invoices;

SELECT
    i.invoice_number,
    i.invoice_date,
    c.customer_name,
    sp.salesperson_name,
    ca.vin,
    mf.manufacturer,
    mo.model
FROM invoices i
JOIN customers c
    ON i.customer_id = c.customer_id
JOIN salespersons sp
    ON i.salesperson_id = sp.salesperson_id
JOIN cars ca
    ON i.car_id = ca.car_id
JOIN models mo
    ON ca.model_id = mo.model_id
JOIN manufacturers mf
    ON mo.manufacturer_id = mf.manufacturer_id;



