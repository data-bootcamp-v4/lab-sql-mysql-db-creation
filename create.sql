CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

# dropping cars table
DROP TABLE IF EXISTS cars;

#creating cars table
CREATE TABLE CARS (
	vehicle_id int primary key,
    manufacturer_name varchar(100), # i should i created separate manufacturer table and then used m_id here but i forgot to create table in ERP digram
    model varchar(50),
    year date,
    colour varchar(20)
);

# dropping stores table
DROP TABLE IF EXISTS stores;

CREATE TABLE stores(
	store_id int primary key,
    store_name varchar(50),
    location varchar(50)
);

# dropping salespersons table
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons(
	staff_id int primary key,
    store_id int,
    first_name varchar(20),
    last_name varchar(40)
);

# dropping customers table
DROP TABLE IF EXISTS customers;

CREATE TABLE customers(
	customer_id int primary key,
    cust_name varchar(100),
    phn_no varchar(20),
    email varchar(50),
    address varchar(100),
    city varchar(20),
    state varchar(20),
    country varchar(50),
    zip char(5)
);

# dropping invoices table
DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices(
	invoice_id int primary key,
    invoice_date date,
    vehicle_id int,
    customer_id int,
    staff_id int
);

#defining foreign keys
# foreign key in salespersons table
ALTER TABLE salespersons 
add constraint fk_store_id 
foreign key(store_id)
references stores(store_id);

# foreign key in invoices table
ALTER TABLE invoices 
add constraint fk_staff_id 
foreign key(staff_id)
references salespersons(staff_id);

ALTER TABLE invoices 
add constraint fk_vehicle_id 
foreign key(vehicle_id)
references cars(vehicle_id);

ALTER TABLE invoices 
add constraint fk_customer_id 
foreign key(customer_id)
references customers(customer_id);


