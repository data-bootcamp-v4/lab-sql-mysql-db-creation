CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE lab_mysql.cars (
VIN INT, 
manufacterer VARCHAR(20), 
model VARCHAR(20), 
year INT, 
color ENUM('black', 'white', 'red', 'grey', 'blue', 'other'),
PRIMARY KEY (VIN)
);

DROP TABLE lab_mysql.cars
; 

CREATE TABLE lab_mysql.clients (
id_client INT AUTO_INCREMENT,
name VARCHAR(30),
phone INT, 
mail VARCHAR(40), 
address VARCHAR(40), 
city VARCHAR(15),
state VARCHAR(15),
country VARCHAR(15), 
CP INT, 
PRIMARY KEY (id_client)
); 

CREATE TABLE lab_mysql.salesperson (
id_salesperson INT, 
name VARCHAR (30),
shop ENUM('north', 'west', 'east', 'south'), 
PRIMARY KEY (id_salesperson)
); 

CREATE TABLE lab_mysql.invoices ( 
num_invoice INT,
id_client INT, 
id_salesperson INT,
date DATETIME, 
car INT, 
PRIMARY KEY (num_invoice),
FOREIGN KEY (car) REFERENCES cars (VIN) ON DELETE CASCADE,
FOREIGN KEY (id_client) REFERENCES clients (id_client) ON DELETE CASCADE,
FOREIGN KEY (id_salesperson) REFERENCES salesperson (id_salesperson) ON DELETE CASCADE
);