
# seeding cars table
INSERT INTO cars (vehicle_id, manufacturer_name, model, year, colour)
VALUES 
(1, 'Volkswagen', 'Tiguan', '2019-01-01', 'Blue'),
(2, 'Peugeot', 'Rifter', '2019-01-01', 'Red'),
(3, 'Ford', 'Fusion', '2018-01-01', 'White'),
(4, 'Toyota', 'RAV4', '2018-01-01', 'Silver'),
(5, 'Volvo', 'V60', '2019-01-01', 'Gray'),
(6, 'Volvo', 'V60 Cross Country', '2019-01-01', 'Gray');

select * from cars;

# seeding into customers table
INSERT INTO customers (customer_id, cust_name, phn_no, email, address, city, state, country, zip)
VALUES 
(010001, 'Pablo Picasso', '+34 636 17 63 82', "pablo_p90@gmail.com", 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(120001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(230001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', "napoleon_90@gmail.com", '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

select * from customers;

#seeding stores table
INSERT INTO stores (store_id, store_name, location)
VALUES 
(1, 'Madrid Main Office', 'Madrid'),
(2, 'Barcelona Branch', 'Barcelona'),
(3, 'Berlin Center', 'Berlin'),
(4, 'Paris Hub', 'Paris'),
(5, 'Miami Beach Store', 'Miami'),
(6, 'Mexico City North', 'Mexico City'),
(7, 'Amsterdam Square', 'Amsterdam'),
(8, 'São Paulo Central', 'São Paulo');

# seeding salespersons table
INSERT INTO salespersons (staff_id, store_id, first_name, last_name)
VALUES 
(00001, 1, 'Petey', 'Cruiser'),
(00002, 2, 'Anna', 'Sthesia'),
(00003, 3, 'Paul', 'Molive'),
(00004, 4, 'Gail', 'Forcewind'),
(00005, 5, 'Paige', 'Turner'),
(00006, 6, 'Bob', 'Frapples'),
(00007, 7, 'Walter', 'Melon'),
(00008, 8, 'Shonda', 'Leer');

select * from salespersons;

#seeding invoice table:
INSERT INTO invoices (invoice_id, invoice_date, vehicle_id, customer_id, staff_id)
VALUES 
(852399038, '2018-08-22', 1, 010001, 3),
(731166526, '2018-12-31', 3, 230001, 5),
(271135104, '2019-01-22', 2, 010001, 7);

select * from invoices;
