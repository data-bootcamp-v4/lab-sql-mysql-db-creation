CREATE database IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS invoices;
DROP TABLE if exists cars;
create table cars(id int NOT NULL auto_increment ,
vin varchar(17) not null,
manufacturer varchar(50) not null,
model varchar(50) not null,
year int not null,color varchar(30) not null , 
                        PRIMARY KEY (id));

 DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(150) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50),
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    id INT NOT NULL AUTO_INCREMENT,
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id INT NOT NULL AUTO_INCREMENT,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car INT NOT NULL UNIQUE,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);
