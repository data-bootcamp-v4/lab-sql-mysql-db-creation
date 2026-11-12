
CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(17) NOT NULL UNIQUE,
    manufacturer ENUM('Volkswagen', 'Peugeot', 'Ford', 'Toyota', 'Volvo') NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(50) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(50),
    cust_address VARCHAR(100) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(10) NOT NULL
);

CREATE TABLE salespersons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT NOT NULL,
    staff_name VARCHAR(50) NOT NULL,
    store VARCHAR(20) NOT NULL
);

CREATE TABLE invoices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number INT NOT NULL,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

INSERT INTO cars (id, vin, manufacturer, model, car_year, color) VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVG', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(1, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (id, staff_id, staff_name, store) VALUES
(1, 100001, 'Petey Cruiser', 'Madrid'),
(2, 200002, 'Anna Sthesia', 'Barcelona'),
(3, 300003, 'Paul Molive', 'Berlin'),
(4, 400004, 'Gail Forcewind', 'Paris'),
(5, 500005, 'Paige Turner', 'Mimia'),
(6, 600006, 'Bob Frapples', 'Mexico City'),
(7, 700007, 'Walter Melon', 'Amsterdam'),
(8, 800008, 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (id, invoice_number, invoice_date, car_id, customer_id, salesperson_id) VALUES
(1, 852399038, '2018-08-22', 1, 1, 3),
(2, 731166526, '2018-12-31', 3, 3, 5),
(3, 271135104, '2019-01-22', 2, 2, 7);

UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE id = 1;
UPDATE customers SET cust_email = 'lincoln@us.gov' WHERE id = 2;
UPDATE customers SET cust_email = 'hello@napoleon.me' WHERE id = 3;