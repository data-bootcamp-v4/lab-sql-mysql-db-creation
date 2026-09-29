
INSERT INTO cars 
(ID_car, VIN, manufacturer, model, year_, colour)
VALUES
(1, '3K096198581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'white'),
(2, 'ZM8G7BEUQZ971H46V', 'Peugeot', 'Rifter', 2019, 'black'),
(3, 'RKXVNNIHLWZ0UB4M', 'Ford', 'Fusion', 2018, 'grey'),
(4, 'HKN DGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'other'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'black'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'grey');      
       
INSERT INTO customers
(dni, name_customer, phone_number, email, adress, city, state, country, ZIP)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', 'alincoln@gmail.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'nbonaparte@gmail.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO salesperson
(ID_salesperson, staff_id, name_staff, store)
VALUES
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');


INSERT INTO invoices
(ID_invoice, invoice_number, invoice_date, car_id, customer_id, salesperson_id)
VALUES
(1, 852399038, '2018-08-22', 1, 1, 3),
(2, 731166526, '2018-12-31', 3, 3, 5),
(3, 271135104, '2019-01-22', 2, 2, 7);

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salesperson;
SELECT * FROM invoices;