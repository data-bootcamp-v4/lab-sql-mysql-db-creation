-- Challenge 1 - Design the Database + Challenge 2 - Create the Database and Tables
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
id INT AUTO_INCREMENT NOT NULL,
vin CHAR (17) NOT NULL,
manufacturer VARCHAR (50) NOT NULL,
model VARCHAR (50) NOT NULL,
years YEAR,
color VARCHAR (200),
PRIMARY KEY (id)
);

CREATE TABLE customers (
id INT AUTO_INCREMENT NOT NULL,
cust_id CHAR (5) NOT NULL,
cust_name VARCHAR (50) NOT NULL,
cust_phone VARCHAR (12) NOT NULL,
cust_email VARCHAR (100) NOT NULL,
cust_address VARCHAR (300) NOT NULL,
cust_city VARCHAR (300) NOT NULL,
cust_state VARCHAR (300) NOT NULL,
cust_country VARCHAR (300) NOT NULL,
cust_zipcode CHAR(10) NOT NULL,
PRIMARY KEY (id)
);

# Si cometes errores se pueden cambiar con este código, en este caso se cambia el valor de cust_email de (15) a (100)
# ALTER TABLE customers
# MODIFY cust_email VARCHAR(100) NOT NULL;

CREATE TABLE salespersons (
id INT AUTO_INCREMENT NOT NULL,
staff_id CHAR (6) NOT NULL,
sales_name VARCHAR (100) NOT NULL,
store VARCHAR (300) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE invoices (
id INT AUTO_INCREMENT NOT NULL,
invoice_number CHAR (50) NOT NULL,
invoice_date VARCHAR (50) NOT NULL,
car INT NOT NULL,
customer INT NOT NULL,
salesperson INT NOT NULL,
PRIMARY KEY (id),
	FOREIGN KEY (car)
	REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (customer)
	REFERENCES customers (id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (salesperson)
	REFERENCES salespersons (id) ON DELETE CASCADE ON UPDATE CASCADE
);

SELECT *
FROM cars;

SELECT *
FROM customers;

SELECT *
FROM salespersons;

SELECT *
FROM invoices;

-- Challenge 3 - Seeding the Database

INSERT INTO cars (vin, manufacturer, model, years, color)
VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
		('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
		('RKXVNNIHLVVZOUB4M','Ford', 'Fusion',2018,'White'),
        ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
        ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60',2019,'Gray'),
        ('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email,cust_address,cust_city,cust_state,cust_country,cust_zipcode)
VALUES ('10001','Pablo Picasso', '+34636176382','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
		('20001','Abraham Lincoln','+13059077086','-','120 SW 8th St','Miami','Florida','United States','33130'),
		('30001','Napoléon Bonaparte','+33179754000','-','40 Rue du Colisée','Paris','Île-de-France','France','75008');
        
INSERT INTO salespersons (staff_id, sales_name, store)
VALUES ('00001','Petey Cruiser','Madrid'),
		('00002','Anna Sthesia','Barcelona'),
        ('00003','Paul Molive','Berlin'),
        ('00004','Gail Forcewind','Paris'),
        ('00005','Paige Turner','Mimia'),
        ('00006','Bob Frapples','Mexico City'),
        ('00007','Walter Melon','Amsterdam'),
        ('00008','Shonda Leer','São Paulo');
        
INSERT INTO invoices (invoice_number, invoice_date, car, customer,salesperson)
VALUES ('852399038','20180822',19,10,3),
		('731166526','20181231',20,11,5),
		('271135104','20190122',21,12,7);
 

 
SELECT *
FROM cars;

SELECT *
FROM customers;

SELECT *
FROM salespersons;

SELECT *
FROM invoices;

-- Bonus Challenge - Updating and Deleting Database Records

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
	SET cust_email = 'ppicasso@gmail.com'
    WHERE cust_id = 10001;
    
UPDATE customers
	SET cust_email = 'lincoln@us.gov'
    WHERE cust_id = 20001;
    
UPDATE customers
	SET cust_email = 'hello@napoleon.me'
    WHERE cust_id = 30001;