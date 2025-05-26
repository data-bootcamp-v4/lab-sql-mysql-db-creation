CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(vin_id INT NOT NULL, 
				  manufacturer VARCHAR(50) NOT NULL,
                  model INT(4) NOT NULL,
                  year YEAR(4) NOT NULL,
                  color VARCHAR(50) NOT NULL,
                  PRIMARY KEY (vin_id)
                  );

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(customer_id INT NOT NULL,
                       name VARCHAR(50) NOT NULL,
                       phone_number INT NOT NULL,
                       email VARCHAR(50) DEFAULT 'email@xyz.com',
                       address VARCHAR(50) NOT NULL,
                       city VARCHAR(50) NOT NULL,
                       state_province VARCHAR(50) NOT NULL,
                       country VARCHAR(50) NOT NULL,
                       postal_code VARCHAR(50) NOT NULL,
                       PRIMARY KEY (customer_id)
                       );

DROP TABLE IF EXISTS sales_person;
CREATE TABLE sales_person(staff_id INT NOT NULL,
                         name VARCHAR(50) NOT NULL,
                         store VARCHAR(50),
                         PRIMARY KEY (staff_id)
                         );

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(invoice_nr INT NOT NULL,
                      date DATE, 
                      car INT NOT NULL,
                      customer INT NOT NULL,
                      sales_person INT NOT NULL,
                      PRIMARY KEY (invoice_nr),
                      CONSTRAINT invoice_vin FOREIGN KEY (car) REFERENCES cars(vin_id),
                      CONSTRAINT invoice_customer FOREIGN KEY (customer) REFERENCES customers(customer_id),
                      CONSTRAINT invoice_staff FOREIGN KEY (sales_person) REFERENCES sales_person(staff_id)                
                      );

