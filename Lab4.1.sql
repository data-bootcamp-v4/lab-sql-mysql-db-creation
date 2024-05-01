
CREATE DATABASE IF NOT EXISTS cars;

CREATE TABLE cars.cars (VIN INT PRIMARY KEY,
manufacturer VARCHAR(50),
model VARCHAR(50),
year INT,
colour VARCHAR(50));

CREATE TABLE cars.customers (customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
phone_number INT,
email VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
state_province VARCHAR(50),
country VARCHAR(50),
zip_code INT); 

CREATE TABLE cars.salespersons (staff_id INT PRIMARY KEY,
staff_name VARCHAR(50),
store VARCHAR(50));

CREATE TABLE cars.invoices (invoice_number INT PRIMARY KEY,
date INT,
VIN INT,
customer_id INT,
staff_id INT);

USE cars;

ALTER TABLE invoices 
ADD CONSTRAINT FK_VIN 
FOREIGN KEY (VIN) 
REFERENCES cars(VIN);

ALTER TABLE invoices 
ADD CONSTRAINT FK_staff_id 
FOREIGN KEY (staff_id) 
REFERENCES salespersons(staff_id);

ALTER TABLE invoices 
ADD CONSTRAINT FK_customer_id 
FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id);

INSERT INTO customers (customer_id, customer_name, email)
VALUES (1, "John Doe", "johndoe@example.com"),
(2, "Jane Smith", "janesmith@example.com"),
(3, "Bob Johnson", "thetigerofcarowners@example.com");



INSERT INTO cars (VIN, manufacturer, model, year, colour)
VALUES (4634, "Volkswagen","Tiguan",2019,"Blue"),
(2784, "Peugeot","Rifter",2019,"Red"),
(4378, "Ford","Fusion",2018,"White"),
(9440, "Toyota","RAV4",2018,"Silver"),
(1345, "Volvo","V60",2019,"Gray"),
(8522, "Innocenti","Y10",1994,"Gold");

INSERT INTO customers (customer_id, customer_name, phone_number, address, city, state_province, country, zip_code)
VALUES (4, "Pablo Picasso",94956813, "Paseo de la chopera, 14","Madrid","Madrid","Spain",28045),
(5, "Abraham Lincoln",3802380,"120 SW 8th St","Miami","FL","USA",33130),
(6, "Napoleone Buonaparte",111112,"40 Rue du Colisée","Paris","Île de France","France",75008);

INSERT INTO salespersons (staff_id,staff_name,store)
VALUES (1111, "Miguel Jamón", "Madrid"),
(1112, "Anita Panita", "Barcelona"),
(1113, "Fritz Becks", "Berlin"),
(1114, "Annette Baguette", "Paris"),
(1115, "Betty Spaghetti", "Miami"),
(1116, "Paco del Taco", "Mexico City"),
(1117, "Ijsel Stroopwaffel", "Amsterdam"),
(1118, "Paulinha Maminha", "São Paulo");

INSERT INTO invoices (invoice_number,date,VIN,customer_id,staff_id)
VALUES (9990,230516,4378,6,1114),
(9991,230429,1345,5,1111),
(9992,231112,8522,4,1115);

SELECT * FROM salespersons;
