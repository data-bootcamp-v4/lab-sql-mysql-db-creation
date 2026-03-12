INSERT INTO Cars(vehicle_identification_number_VIN, manufacturer, model, car_year, car_color)
VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "black"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "white"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "black"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "white"),
("DAM41UDN3CHU2WVF7", "Volvo", "V60 Cross Country", 2019, "black");

INSERT INTO Customers(customer_ID, customer_name, phone_number, email, address, city, state_province, country, zip_code)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO Salespersons(staff_ID, sales_name, store)
VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

INSERT INTO Invoices (invoice_number, invoice_date, car, customer, salesperson)
VALUES
(852399038, '22-08-2018', 1, 1, 3),
(731166526, '31-12-2018', 3, 3, 5),
(271135104, '22-01-2019', 2, 2, 7);
