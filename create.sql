USE lab_mysql;

DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS salespersons;
CREATE TABLE car (car_id INT PRIMARY KEY AUTO_INCREMENT, manufacturer VARCHAR(20),
       model VARCHAR(20), year YEAR, color VARCHAR(20), car_model_id INT);
CREATE TABLE salespersons (staff_id INT PRIMARY KEY AUTO_INCREMENT, staff_name VARCHAR(20), staff_store VARCHAR(20));
       
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(20),
phone VARCHAR(15),
email_address VARCHAR(45),
address VARCHAR(45),
city VARCHAR(20),
`state` VARCHAR(20),
country VARCHAR(20),
zip_code VARCHAR(10));


CREATE TABLE invoices (
invoice_id INT PRIMARY KEY AUTO_INCREMENT,
`date`DATE,
car_id INT,
FOREIGN KEY (car_id) REFERENCES car(car_id),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
salesperson_id INT,
FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id),
net_amount DEC,
gross_amount DEC
);
