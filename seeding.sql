

CREATE TABLE cars (
    vin VARCHAR(45) PRIMARY KEY,
    manufacturer VARCHAR(45),
    model VARCHAR(45),
    year YEAR,
    color VARCHAR(45)
);

CREATE TABLE invoices (
    invoice_num INT PRIMARY KEY,
    date DATE,
    car_id VARCHAR(45),
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(vin),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id)
);

INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
('3K096I98581DH5NUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97TH4G6', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDG57CU31E927JW', 'Toyota', 'Rav4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO salespersons (staff_id, name, store)
VALUES
(00003, 'Paul Molive', 'Berlin'),
(00005, 'Paige Turner', 'Miami'),
(00007, 'Walter Melon', 'Amsterdam');

INSERT INTO invoices(invoice_num, date, car_id, salesperson_id)
Values
	(852399038,'2018-08-22', '3K096I98581DH5NUP', 00003),
    (731166526, '2018-12-31', '3K096I98581DH5NUP', 00005),
    (271135104, '2019-01-22', 'RKXVNNHLVVZOUB4M', 00007);
    
    INSERT INTO customers(customer_id, name, phone, email, address, city, state, country)
Values
	(10001,'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain'),
    (20001,'Abraham Lincoln', '++1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida','United States'),
    (30001,'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée, 14', 'Paris', 'Île-de-France', 'France');
	
