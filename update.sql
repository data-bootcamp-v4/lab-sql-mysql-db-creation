CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS lab_mysql.cars(
vin_number VARCHAR(20),
manufaturer VARCHAR(20),
model VARCHAR(20),
year DATETIME,
color ENUM("white", "black", "grey", "blue", "red"),
PRIMARY KEY (vin_number)
);

ALTER TABLE cars
MODIFY COLUMN year INT NOT NULL;


CREATE TABLE IF NOT EXISTS lab_mysql.customers(
id_customer INT AUTO_INCREMENT,
name_customer VARCHAR(20),
phone_number VARCHAR(20),
email VARCHAR(50),
address VARCHAR(50),
city VARCHAR(25),
state_province VARCHAR(25),
country VARCHAR(25),
zip_postal INT NOT NULL,
PRIMARY KEY (id_customer)
);

CREATE TABLE IF NOT EXISTS lab_mysql.sales_persons(
id_staff INT NOT NULL,
name_staff VARCHAR(20),
store VARCHAR(20),
PRIMARY KEY (id_staff)
);

CREATE TABLE IF NOT EXISTS lab_mysql.invoices(
invoice_number INT NOT NULL,
date DATETIME,
vin_number VARCHAR(20),
id_customer INT NOT NULL,
id_staff INT NOT NULL,
PRIMARY KEY (invoice_number),
FOREIGN KEY (id_customer) REFERENCES customers (id_customer) ON DELETE CASCADE,
FOREIGN KEY (id_staff) REFERENCES sales_persons (id_staff) ON DELETE CASCADE,
FOREIGN KEY (vin_number) REFERENCES cars (vin_number) ON DELETE CASCADE
);

ALTER TABLE invoices
MODIFY COLUMN date VARCHAR(25);

INSERT INTO customers (id_customer, name_customer, phone_number, email, address, city, state_province, country, zip_postal)
VALUES (1, 'Pablo Picasso', "+34 636176382", "-", "calle 1", "Madrid", "Madrid", "Spain", "28045"),
       (2, 'Juan Perez', "+34 123456789", "-", "calle 2", "Madrid", "Madrid", "Spain", "28045"),
       (3, 'Maria Lopez', "+34 987654321", "-", "calle 4", "Madrid", "Madrid", "Spain", "28045");
       
INSERT INTO cars (vin_number, manufaturer, model, year, color)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
		("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
        ("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2018, "Black");
        
INSERT INTO sales_persons (id_staff, name_staff, store)
VALUES (1, "Petey Cruiser", "Madrid"),
		(2, "Anna Sthesia", "Barcelona"),
        (3, "Paul Molive", "Malaga");

INSERT INTO invoices (invoice_number, date, vin_number, id_customer, id_staff)
VALUES (852399038, "22-08-2018", "3K096I98581DHSNUP", 1, 3),
		(731166526, "31-12-2021", "ZM8G7BEUQZ97IH46V", 3, 2),
        (271135104, "22-01-2019", "DAM41UDN3CHU2WVF6", 2, 3);

SET SQL_SAFE_UPDATES = 0;

UPDATE customers
	SET email = "ppicasso@gmail.com"
    WHERE email = "-";