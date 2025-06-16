create database if not exists lab_mysql;
use lab_mysql;

drop table if exists cars, customers, salespersons;

create table if not exists cars (
vin int auto_increment primary key,
manufacturer varchar(45) not null,
model varchar(45) not null,
year_of_manufacture int not null,
color varchar(45)
);

create table if not exists customers (
id int auto_increment primary key,
client_id int unique not null,
client_name varchar(45) not null,
phone_number varchar(45) not null,
email varchar(45) not null,
direction varchar(45) not null,
city varchar(45) not null,
province varchar(45) not null,
country varchar(45) not null,
post_code varchar(45) not null
);

create table if not exists salespersons (
id int auto_increment primary key,
employed_id int unique not null,
salesperson_name varchar(45) not null,
shop varchar(45) not null
);

create table if not exists invoice (
invoice_id int auto_increment primary key,
invoice_number varchar(45) not null,
emision_date date not null,
salesperson_id int not null,
client_id int not null,
car_vin int not null,
foreign key (car_vin) references cars (vin),
foreign key (client_id) references customers (client_id),
foreign key (salesperson_id) references salespersons (employed_id)
);



