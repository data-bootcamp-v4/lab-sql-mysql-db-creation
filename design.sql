CREATE SCHEMA autocar;
USE autocar;
CREATE TABLE cars(
VIN CHAR(30),
Manufacturer VARCHAR(20) DEFAULT NULL,
Model VARCHAR(40) DEFAULT NULL,
Year INT,
Color ENUM('negro', 'blanco', 'gris', 'azul', 'rojo', 'verde', 'amarillo'),
PRIMARY KEY (VIN),
CONSTRAINT year_check CHECK (Year > 1990)
);

USE autocar;
CREATE TABLE customers(
Customer_ID INT NOT NULL AUTO_INCREMENT,
Customer_name VARCHAR(100) DEFAULT NULL,
Phone_number VARCHAR(20),
Email VARCHAR(50),
Address VARCHAR(150),
City VARCHAR(100),
State_province VARCHAR(100),
Country VARCHAR(60),
Postal_code VARCHAR(10),
PRIMARY KEY(Customer_ID)
);

USE autocar;
CREATE TABLE salespersons(
Staff_ID INT NOT NULL AUTO_INCREMENT,
Salesperson_name VARCHAR(100) DEFAULT NULL,
Store VARCHAR(20),
PRIMARY KEY(Staff_ID)
);

USE autocar;
CREATE TABLE invoices(
Invoice_number INT NOT NULL AUTO_INCREMENT,
Invoice_date DATE NOT NULL,
VIN VARCHAR(30),
Customer_ID INT NOT NULL,
Staff_ID INT NOT NULL,
PRIMARY KEY (Invoice_number),
FOREIGN KEY (VIN) REFERENCES cars(VIN),
    FOREIGN KEY (Customer_ID) REFERENCES customers(Customer_ID),
    FOREIGN KEY (Staff_ID) REFERENCES salespersons(Staff_ID)
);


