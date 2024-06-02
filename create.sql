CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS salesperson;

CREATE TABLE cars (
    vin VARCHAR (255) AUTO_INCREMENT PRIMARY KEY,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    yr BIGINT,
    color VARCHAR(255)
);

CREATE TABLE customer (
    c_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    c_customer VARCHAR(255),
    phone BIGINT(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal_code BIGINT
);

CREATE TABLE salesperson (
    sp_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nm VARCHAR(255),
    store VARCHAR(255)
);

CREATE TABLE invoice (
    nm BIGINT AUTO_INCREMENT PRIMARY KEY,
    dt BIGINT,
    car VARCHAR (255),
    customer BIGINT,
    salesperson BIGINT,
    foreign key(car) references cars(vin),
    foreign key(customer) references customer(c_id),
    foreign key(salesperson) references salesperson(sp_id)
);


