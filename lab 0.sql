/* Laboratorio inicial de Sql:
Debes diseñar, crear y controlar una db que recoja datos de: coches, vendedores, compradores y facturas.
Voy a ir poniendo apartado por apartado que pide el enunciado:
*/

-- 1) Crea la db cars_sales:

CREATE DATABASE ventas_coches; 


/* 2) Crea las tablas relacionales:
El enunciado te pude 4:    
    - Cars:  e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory
    - Customers:  e.g. the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
    - Salespersons: e.g. staff ID, name, and the store at your company.
    - Invoices: e.g. the invoice number, date, car, customer, and salesperson related to each car sale.
*/

CREATE TABLE cars (
    VIN INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY, 
    manufacturer VARCHAR(300), 
    model VARCHAR(300),
    year_car VARCHAR(4),
    color VARCHAR(50)
);

CREATE TABLE customers (
    c_id INT AUTO_INCREMENT PRIMARY KEY,
    c_name VARCHAR(300), 
    c_num VARCHAR(300),
    c_email VARCHAR(300),
    c_adress VARCHAR(300),
    c_city VARCHAR(300),
    c_st_prov VARCHAR(300), 
    c_country VARCHAR(300),
    c_post_code VARCHAR(250)
);

CREATE TABLE salepersons (
    s_id INT AUTO_INCREMENT PRIMARY KEY,
    s_name VARCHAR(300),
    store_id VARCHAR(300)
);

CREATE TABLE invoices (
    ref_in INT AUTO_INCREMENT PRIMARY KEY,
    date_in DATE, 
    VIN VARCHAR(300),
    c_id VARCHAR(300),
    s_id VARCHAR(300),
    FOREIGN KEY (VIN) REFERENCES cars(VIN),
    FOREIGN KEY (c_id) REFERENCES customers(c_id),
    FOREIGN KEY (s_id) REFERENCES salepersons(s_id)
);

-- 3) Mete datos dentro de las tablas:

INSERT INTO customers (c_id, c_name, c_num, c_email, c_address, c_city, c_st_prov, c_country, c_post_code) VALUES (1020, 'Sarah', '157', 'asstyujh@ioki.com', 'C/ertyu', 'Madrid', 'zxcvbn', 'Spain', '45863');
INSERT INTO customers (c_id, c_name, c_num, c_email, c_address, c_city, c_st_prov, c_country, c_post_code) VALUES (1095, 'Sue', '62', 'asghj@hjiop.com', 'C/ Reus', 'Barcelona', 'sdfghjk', 'Spain', '12699');
INSERT INTO customers (c_id, c_name, c_num, c_email, c_address, c_city, c_st_prov, c_country, c_post_code) VALUES (4201, 'Steve', '365', 'cytuvygiuhiojpk@hnp.com', 'C/true', 'Madrid', 'wertyui', 'Spain', '12699');

INSERT INTO salepersons (staff_id, s_name, store_id) VALUES  (001, 'Sally', 'Mad_Nord' );
INSERT INTO salepersons (staff_id, s_name, store_id) VALUES (002, 'Susan', 'Barc_Sants');
INSERT INTO salepersons (staff_id, s_name, store_id) VALUES (003, 'Jill', 'Barc_Sants');

INSERT INTO invoices (ref_in, date_in, VIN, c_id, s_id) VALUES  (010, 'Sally', 'Mad_Nord' );
INSERT INTO invoices (ref_in, date_in, VIN, c_id, s_id) VALUES (020, 'Susan', 'Barc_Sants');


-- 4) Opcional. Actualiza información.

UPDATE salepersons 
	SET store_id = '001' 
	WHERE store_id = 'Barc_sants';
	
UPDATE salepersons 
	SET store_id = '002' 
	WHERE store_id = 'Mad_Nord';

-- 5) Opcional. Borra datos.

DELETE FROM customers WHERE c_city = 'Madrid';

SELECT * FROM customers;
