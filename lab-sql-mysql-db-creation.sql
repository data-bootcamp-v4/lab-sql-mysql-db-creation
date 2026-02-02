-- car dealership databse

create database if not exists lab_mysql;

use lab_mysql;

-- drop tables first
drop table if exists invoices;
drop table if exists cars;
drop table if exists customers;
drop table if exists salespersons;


-- make the cars table
create table cars (
    id int auto_increment primary key,
    vin varchar(17) not null unique,
    manufacturer varchar(50) not null,
    model varchar(50) not null,
    year int not null,
    color varchar(30)
);

-- customers table
create table customers (
    id int auto_increment primary key,
    cust_id int not null unique,
    cust_name varchar(100) not null,
    cust_phone varchar(20),
    cust_email varchar(100),
    cust_address varchar(200),
    cust_city varchar(50),
    cust_state varchar(50),
    cust_country varchar(50),
    cust_zipcode varchar(10)
);

-- salespersons
create table salespersons (
    id int auto_increment primary key,
    staff_id varchar(10) not null unique,
    name varchar(100) not null,
    store varchar(50) not null
);

-- invoices table 
create table invoices (
    id int auto_increment primary key,
    invoice_number varchar(20) not null unique,
    date date not null,
    car_id int not null,
    customer_id int not null,
    salesperson_id int not null,
    foreign key (car_id) references cars(id),
    foreign key (customer_id) references customers(id),
    foreign key (salesperson_id) references salespersons(id)
);


-- add cars
insert into cars (id, vin, manufacturer, model, year, color)
values 
    (1, '3K096I98581DHSNUP', 'Jaguar', 'E-Type', 1961, 'British Racing Green'),
    (2, 'ZM8G7BEUQZ97IH46V', 'Austin Healey', '3000', 1964, 'Red'),
    (3, 'RKXVNNIHLVVZOUB4M', 'MG', 'MGB', 1965, 'White'),
    (4, 'HKNDGS7CU31E9Z7JW', 'Triumph', 'TR6', 1969, 'Silver'),
    (5, 'DAM41UDN3CHU2WVF6', 'Aston Martin', 'DB5', 1963, 'Gray'),
    (6,'DAM41UDN3CHU2WVF7', 'Mini', 'Cooper S', 1967, 'Blue');

-- customers
insert into customers (id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
values 
    (1, 10001, 'George Best', '+44 161 496 3000', null, '15 Old Trafford', 'Manchester', 'Greater Manchester', 'United Kingdom', 'M16 0RA'),
    (2,20001, 'Bobby Charlton', '+44 191 214 5000', null,'12 St James Park', 'Newcastle', 'Tyne and Wear', 'United Kingdom', 'NE1 4ST'),
    (3, 30001, 'Jimmy Johnstone', '+44 141 552 6891', null, '27 Celtic Park', 'Glasgow', 'Scotland', 'United Kingdom', 'G40 3RE');

-- add salespersons
insert into salespersons (id, staff_id, name, store)
values 
    (1, '00001', 'Kenny Dalglish', 'Glasgow'),
    (2, '00002', 'Graeme Souness', 'Edinburgh'),
    (3, '00003', 'Alan Hansen', 'Aberdeen'),
    (4, '00004', 'Denis Law', 'Dundee'),
(5, '00005', 'Danny McGrain', 'Inverness'),
    (6, '00006', 'Joe Jordan', 'Perth'),
    (7, '00007', 'Gordon Strachan', 'Stirling'),
    (8, '00008', 'Willie Miller', 'Paisley');

-- invoices
insert into invoices (id, invoice_number, date, car_id, customer_id, salesperson_id)
values 
    (1, '852399038', '2018-08-22', 1, 1, 3),
    (2, '731166526', '2018-12-31', 3, 3, 5),
    (3, '271135104', '2019-01-22', 2,2, 7);
    
    select * from lab_mysql.cars;