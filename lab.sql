CREATE SCHEMA lab_sql_mysql_db_creation;

USE lab_sql_mysql_db_creation;
    
CREATE TABLE IF NOT EXISTS cars (
    vin VARCHAR(50) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(100),
    year INT
);

CREATE TABLE customers (
	customer_id VARCHAR(25) PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    phone_number INT ,
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR (25),
    province VARCHAR(25),
    country VARCHAR(25),
    postal_code INT
);

CREATE TABLE salesperson (
	salesperson_id VARCHAR (20) PRIMARY KEY,
    salesperson_name VARCHAR (50),
    store VARCHAR (50)
);
    
CREATE TABLE invoices (
    invoice_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_date DATETIME,
    vin VARCHAR(50),
    customer_id VARCHAR(25),
    salesperson_id VARCHAR(20), 
    FOREIGN KEY (vin) REFERENCES cars(vin),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);


