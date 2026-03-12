CREATE SCHEMA lab_sql_mysql_db_creation;

USE lab_sql_mysql_db_creation;

CREATE TABLE Cars(
vehicle_identification_number_VIN VARCHAR(20) NOT NULL,
manufacturer VARCHAR (50),
model VARCHAR (50),
car_year INT,
car_color ENUM ("white", "black", "red"),
PRIMARY KEY (vehicle_identification_number_VIN)
);


CREATE TABLE Customers(
customer_ID INT AUTO_INCREMENT,
customer_name VARCHAR (50),
phone_number VARCHAR (50),
email VARCHAR (50),
address VARCHAR (50),
city VARCHAR (50),
state_province VARCHAR (50),
country VARCHAR (50),
zip_code VARCHAR (10)
);

CREATE TABLE Salespersons(
staff_ID INT AUTO_INCREMENT,
sales_name VARCHAR (50),
store VARCHAR (50)
);

CREATE TABLE Invoices (
invoice_number INT AUTO_INCREMENT, 
invoice_date VARCHAR (50),
car VARCHAR (50),
customer Varchar (50),
salesperson Varchar (50),
PRIMARY KEY (invoice_number)
);

ALTER TABLE Customers
ADD CONSTRAINT pk_customers
PRIMARY KEY (customer_ID);

ALTER TABLE Customers
ADD vehicle_identification_number_VIN VARCHAR(20);

ALTER TABLE Customers
ADD CONSTRAINT fk_customer_car
FOREIGN KEY (vehicle_identification_number_VIN)
REFERENCES Cars(vehicle_identification_number_VIN);

ALTER TABLE Salespersons
ADD CONSTRAINT pk_salespersons
PRIMARY KEY (staff_ID);

ALTER TABLE Invoices
ADD vehicle_identification_number_VIN VARCHAR(20);

ALTER TABLE Invoices
ADD customer_ID INT;

ALTER TABLE Invoices
ADD staff_ID INT;

ALTER TABLE Invoices
ADD CONSTRAINT fk_invoices_cars
FOREIGN KEY (vehicle_identification_number_VIN)
REFERENCES Cars(vehicle_identification_number_VIN);
    
ALTER TABLE Invoices
ADD CONSTRAINT fk_invoices_customers
FOREIGN KEY (customer_ID)
REFERENCES Customers(customer_ID);    

ALTER TABLE Invoices
ADD CONSTRAINT fk_invoices_salespersons
FOREIGN KEY (staff_ID)
REFERENCES Salespersons(staff_ID); 

ALTER TABLE Cars
MODIFY COLUMN car_color ENUM('white','black','red','blue','silver','gray');



