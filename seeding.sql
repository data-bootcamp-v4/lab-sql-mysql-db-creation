USE lab_mysql;


INSERT INTO cars (VIN, manufacturer, model, year, car_color) VALUES
("3K096I98581DHSNUP", 'Volkswagen', 'Tiguan', 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", 'Peugeot', 'Rifter', 2019, "Red"),
("RKXVNNIHLVVZOUB4M", 'Ford', 'Fusion', 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", 'RAV4', 2018, "Silver"),
("DAM41UDN3CHU2WVF6", 'Volvo', 'V60', 2019, "Gray"),
("1AB41UDN3CHU2WVF6", 'Volvo', 'V60 Cross Country', 2019, "Gray");


INSERT INTO salespersons (staff_id, first_name, last_name, store) VALUES
(1, 'Petey', 'Cruiser', 'Madrid'),
(2, 'Anna', 'Sthesia', 'Amsterdam'),
(3, 'Paul', 'Molive', 'Barcelona'),
(4, 'Gail', 'Forcewind', 'Madrid'),
(5, 'Paige', 'Turner', 'Amsterdam'),
(6, 'Bob', 'Frapples', 'Barcelona'),
(7, 'Walter', 'Melon', 'Madrid'),
(8, 'Shonda', 'Leer', 'Amsterdam');


INSERT INTO customers (customer_id, customer_name, customer_phone, email, address) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82','ppicasso@gmail.com', 'Paseo de la Chopera, 14'),
(20001, 'Abraham Lincoln', '+1 305 907 7086','lincoln@us.gov', '120 SW 8th St'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'hello@napoleon.me', '40 Rue du Colisée');


INSERT INTO invoices (invoice_id, date, VIN, customer_id, staff_id) VALUES
(852399038,	"22-08-2018",	1, 1, 3),
(731166526,	"31-12-2018",	3,	3,	5),
(271135104,	"22-01-2019",	2,	2,	7);


INSERT INTO invoices (invoice_id, date, VIN, customer_id, staff_id) VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 3, 5),
(271135104, '2019-01-22', 2, 2, 7);

