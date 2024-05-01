CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
create table if not exists cars (
  vehicleid int primary key auto_increment,
  VIN varchar(40),
  manufacturer varchar(40),
  model varchar(20),
  year int,
  color varchar(20)
);

DROP TABLE IF EXISTS customers;
create table if not exists customers (
  customerid int primary key auto_increment,
  customer_number int,
  customername varchar(40),
  phone_number varchar(40),
  email varchar(40),
  address varchar(60),
  city varchar(20),
  state varchar(20),
  country varchar(20),
  zip_code int
);

DROP TABLE IF EXISTS salespersons;
create table if not exists salespersons (
  staffid int primary key auto_increment,
  staffnumber int,
  staffname varchar(40),
  store varchar(40)
);

DROP TABLE IF EXISTS invoices;
create table if not exists invoices (
  invoiceid int primary key auto_increment,
  invoicenumber int,
  invdate date,
  car varchar(40),
  customer varchar(40),
  salesperson varchar(40)
);

describe cars