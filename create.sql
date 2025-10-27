CREATE SCHEMA lab_mysql;

CREATE TABLE Cars(
	id_vehicle INT AUTO_INCREMENT,
    PRIMARY KEY(ID_vehicle),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(25)
);

CREATE TABLE Customers(
	id_customer INT AUTO_INCREMENT,
    PRIMARY KEY(id_customer),
    name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    state CHAR (25),
    country VARCHAR (50),
    zip VARCHAR(25)
);

CREATE TABLE salespersons(
	id_staff INT AUTO_INCREMENT,
    PRIMARY KEY (id_staff),
    name VARCHAR(100),
    store VARCHAR(100)
);

CREATE TABLE invoices (
	id_invoice INT AUTO_INCREMENT,
    PRIMARY KEY (id_invoice),
	invoice_number VARCHAR(25),
    date DATE,
	car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    
    FOREIGN KEY (car_id) REFERENCES Cars(id_vehicle),
    FOREIGN KEY (customer_id) REFERENCES Customers(id_customer),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id_staff)
);


