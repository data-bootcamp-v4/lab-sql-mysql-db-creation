USE lab_my_sql;

ALTER TABLE cars MODIFY COLUMN id_vin VARCHAR(30);

INSERT INTO cars (id_vin, manufacturer, model, year, color, price)
VALUES 	('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 18000),
		('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 15000),
		('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 14400),
		('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 21000),
		('DAM41UDN3CHU2WVF6', 'Volvo',	'V60', 2019, 'Gray', 25000),
		('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 26500);




SET SQL_SAFE_UPDATES = 0;


ALTER TABLE customers MODIFY COLUMN phone VARCHAR(30);        

INSERT INTO customers (id_cust, name, phone, email, address, city, state_province, country, zip_postal_code)
VALUES 	(10001, 'Pablo Picasso', '+34 636 17 63 82', ' ', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
		(20001, 'Abraham Lincoln', '+1 305 907 7086', ' ', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
		(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', ' ','40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);
        
UPDATE customers SET email = ' ';

INSERT INTO sales_persons (id_staff, name_staff, store)
VALUES 	(201, 'Petey Cruiser', 'Madrid'),
		(202, 'Anna Sthesia', 'Barcelona'),
        (203, 'Paul Molive',	'Berlin'),
        (204, 'Gail Forcewind', 'Paris'),
        (205, 'Paige Turner', 'Mimia'),
        (206, 'Bob Frapples', 'Mexico City'),
        (207, 'Walter Melon', 'Amsterdam'),
        (208, 'Shonda Leer', 'São Paulo');


SELECT*
FROM customers;

ALTER TABLE invoices DROP FOREIGN KEY invoices_ibfk_1;

ALTER TABLE customers
ADD UNIQUE INDEX unique_id_cust (id_cust);

ALTER TABLE invoices
ADD CONSTRAINT invoices_ibfk_1 FOREIGN KEY (customer_id) REFERENCES customers(id_cust);

SELECT * FROM sales_persons;

ALTER TABLE sales_persons
ADD UNIQUE INDEX unique_id_staff (id_staff);

ALTER TABLE invoices DROP FOREIGN KEY invoices_ibfk_3;
ALTER TABLE invoices
ADD CONSTRAINT invoices_ibfk_3 FOREIGN KEY (sales_id) REFERENCES sales_persons(id_staff);

INSERT INTO invoices (inv_nr, date, customer_id, car_id, sales_id)
VALUES 	(852399038, '2018-08-22', 10001, 13, 203),
		(731166526, '2018-12-31', 20001, 16, 205),
        (271135104, '2019-01-22', 30001, 17, 207);

SELECT * FROM customers;