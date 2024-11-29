INSERT INTO cars (id, vin, manufacturer, model, production_year, color) 
VALUES 
ROW (id, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'), 
ROW(id, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'), 
ROW(id, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'), 
ROW(id, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'), 
ROW(id, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'), 
ROW(id, 'DAM41UDN3CHU2WVF6', 'Volvo', 'Cross Country', 2019, 'Gray');
SELECT * FROM cars;

INSERT INTO customers (id, customer_id, last_name, first_name, phone_number, email, address, postal_code, city, state_or_province, country) 
VALUES 
ROW (id, '10001', 'Picasso', 'Pablo', '+34636176382', 'pablo.picasso@mail.com', 'Paseo de la Chopera, 14', '28045', 'Madrid', 'Madrid', 'Spain'), 
ROW (id, '20001', 'Lincoln', 'Abraham', '+13059077086', 'abraham.lincoln@mail.com', '120 SW 8th St', '33130', 'Miami', 'Florida', 'United States'), 
ROW (id, '30001', 'Bonaparte', 'Napoléon', '+33179754000', 'napoleon.bonaparte@mail.com', '40 Rue du Colisée', '75008', 'Paris', 'Île-de-France', 'France'); 
SELECT * FROM customers;

INSERT INTO invoices (id, date_issued, invoice_nr, vin, customer_id, staff_id) 
VALUES 
ROW (id, '2018-08-22', '852399038', '3K096I98581DHSNUP', '10001', '00001'), 
ROW (id, '2018-12-31', '731166526', 'RKXVNNIHLVVZOUB4M', '20001', '00002'), 
ROW (id, '2019-01-19', '271135104', 'DAM41UDN3CHU2WVF6', '30001', '00003');
SELECT * FROM invoices;

INSERT INTO salesperson (id, staff_id, first_name, last_name, store) 
VALUES 
ROW (id, '00001', 'Petey', 'Cruiser', 'Madrid'), 
ROW (id, '00002', 'Anna', 'Sthesia', 'Barcelona'), 
ROW (id, '00003', 'Paul', 'Molive', 'Berlin'), 
ROW (id, '00004', 'Gail', 'Forcewind', 'Paris'), 
ROW (id, '00005', 'Paige', 'Turner', 'Mimia'), 
ROW (id, '00006', 'Bob', 'Frapples',	'Mexico City'), 
ROW (id, '00007', 'Walter', 'Melon',	'Amsterdam'), 
ROW (id, '00008', 'Shonda', 'Leer', 'São Paulo');
SELECT * FROM salesperson;
