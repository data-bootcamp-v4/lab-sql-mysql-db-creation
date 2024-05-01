USE dealership;

SELECT * FROM salespeople;

INSERT INTO dealership.salespeople (staff_id, name_s, store)
VALUES  (00001, 'Petey Cruiser', 'Madrid'),
		(00002, 'Anna Sthesia',	'Barcelona'),
		(00003,	'Paul Molive',	'Berlin'),
		(00004,	'Gail Forcewind', 'Paris'),
		(00005, 'Paige Turner', 'Mimia'),
		(00006, 'Bob Frapples', 'Mexico City'),
		(00007, 'Walter Melon', 'Amsterdam'),
		(00008, 'Shonda Leer', 'São Paulo');
    
INSERT INTO dealership.customers (customer_id, name_c, phone_n, address, city, state, country, zip)
VALUES  (1, 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
		(2, 'Abraham Lincoln',	'+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
        (3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
        
SELECT * FROM cars;

INSERT INTO dealership.cars (car_id, vin_n, manufacturer, model, year_c, color, quantity)
VALUES  (1, 386416, 'Volkswagen', 'Tiguan', '2019-01-01', 'Blue', 27),
		(2, 572322, 'Peugeot', 'Rifter', '2019-01-01', 'Red', 9),
		(3, 749493, 'Ford', 'Fusion', '2018-01-01', 'White', 16),
		(4, 743952, 'Toyota', 'RAV4', '2018-01-01', 'Silver', 3),
		(5, 687943, 'Volvo', 'V60', '2019-01-01', 'Gray', 14),
		(6, 474748, 'Volvo', 'V60 Cross Country', '2019-01-01', 'Gray', 24);
        
INSERT INTO dealership.invoices (invoice_id, date_i, car_id, customer_id, staff_id)
VALUES  (1, '2018-01-22', 1, 1, 3),
		(2, '2018-07-12', 3, 3, 5),
		(3, '2019-08-23', 2, 2, 7);
        
ALTER TABLE dealership.invoices
ADD CONSTRAINT fk_car_id
FOREIGN KEY (car_id)
REFERENCES cars(car_id);

ALTER TABLE dealership.invoices
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE dealership.invoices
ADD CONSTRAINT fk_staff_id
FOREIGN KEY (staff_id)
REFERENCES salespeople(staff_id);

SELECT * FROM invoices;