CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (ID INT PRIMARY KEY AUTO_INCREMENT, 
						customer_id VARCHAR(50) NOT NULL UNIQUE,
						cust_name VARCHAR(50) NOT NULL,
                        cust_phone_number VARCHAR(50) NOT NULL,
                        cust_email VARCHAR(50),
                        cust_address VARCHAR(100),
                        cust_city VARCHAR(50),
                        cust_state_province VARCHAR(50),
                        cust_country VARCHAR(50),
                        cust_zip_postal_code VARCHAR(50));
                        
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (ID INT PRIMARY KEY AUTO_INCREMENT,
					VIN VARCHAR(17) NOT NULL,
                    manufacturer VARCHAR(50) NOT NULL,
                    model VARCHAR(50) NOT NULL,
                    year SMALLINT NOT NULL,
                    color VARCHAR(50));
                    
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (ID INT PRIMARY KEY AUTO_INCREMENT,
							staff_ID VARCHAR(50) NOT NULL,
                            salesp_name VARCHAR(50) NOT NULL,
                            salesp_store VARCHAR(50) NOT NULL);
                            
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (ID INT PRIMARY KEY AUTO_INCREMENT,
						invoice_number VARCHAR(50) NOT NULL UNIQUE,
						invoice_date DATE NOT NULL,
                        car_ID_fk INT NOT NULL,
                        customer_ID_fk INT NOT NULL,
                        salesperson_ID_fk INT NOT NULL,
		
						FOREIGN KEY (car_ID_fk)
							REFERENCES cars(ID),

						FOREIGN KEY (customer_ID_fk)
							REFERENCES customers(ID),

						FOREIGN KEY (salesperson_ID_fk)
							REFERENCES salespersons(ID));
        
SELECT * FROM customers;
SELECT * FROM cars;
SELECT * FROM salespersons;
SELECT * FROM invoices;