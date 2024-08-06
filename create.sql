# As a good practice
#DROP DATABASE IF EXISTS lab_mysql;

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_id INT NOT NULL auto_increment,
			vin VARCHAR (20) NOT NULL,
            brand VARCHAR (20) NOT NULL,
            model VARCHAR (20) NOT NULL,
            year INT NOT NULL,
            color VARCHAR (20) NOT NULL,            
			PRIMARY KEY (car_id)
);

#DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (salesperson_id INT AUTO_INCREMENT NOT NULL,
						staff_id VARCHAR(20) NOT NULL,
                        sales_name varchar(20) NOT NULL,
                        store_company VARCHAR(20),
                        PRIMARY KEY (salesperson_id)
);
#DROP TABLE IF EXISTS invoices;                    
CREATE TABLE invoices (invoice_id INT auto_increment NOT NULL,
					invoice_number VARCHAR (20) NOT NULL,
                    invoice_date DATE NOT NULL,
                    staff_id INT ,
                    customer_id  INT NOT NULL,
                    car_id  INT NOT NULL,
                    salesperson_id INT,
					PRIMARY KEY (invoice_id),
                    #FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
                    FOREIGN KEY (car_id) REFERENCES cars(car_id),
                    FOREIGN KEY (salesperson_id) REFERENCES salespersons (salesperson_id)
);
#DROP TABLE IF EXISTS customers;                       
CREATE TABLE customers (id_customers VARCHAR(20),
					customer_id INT NOT NULL,
                    customer_name VARCHAR (20) NOT NULL,
                    phone VARCHAR (20),
                    email VARCHAR (40),
                    address VARCHAR (40),
                    city VARCHAR (20),
                    state VARCHAR (20),
                    province VARCHAR (20),
                    country VARCHAR (20),
                    zip VARCHAR (20),
                    postal_code_client VARCHAR(20),
                    PRIMARY KEY (customer_id)
);
                    
                        
            
            
